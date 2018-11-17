class Alien
    # ==================================================
    #                      SET UP
    # ==================================================

    # add attribute readers for instance access
    attr_reader :id, :name, :birthday, :species, :planet, :image

    # connect to postgres
    if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'aliens_development')
    end

    # initialize options hash
    def initialize(opts ={}, id=nil)
      @id = id.to_i,
      @name = opts["name"]
      @birthday = opts["birthday"]
      @species = opts["species"]
      @planet = opts["planet"]
      @image = opts["image"]
    end


    # ==================================================
    #                  PREPARED STATEMNETS
    # ==================================================

    DB.prepare("create_alien",
      <<-SQL
          INSERT INTO alien (name, birthday, species, planet, image)
          VALUES ( $1, $2, $3, $4, $5, $6)
          RETURNING id, name, birthday, species, planet, image;
      SQL
    )

    DB.prepare("delete_alien",
    "DELETE FROM people WHERE id=$1 RETURNING id;"
    )

    DB.prepare("find_person",
      <<-SQL
          SELECT * FROM aliens
          WHERE aliens.id=$1;
      SQL
    )

    DB.prepare("update_person",
      <<-SQL
          UPDATE aliens
          SET name=$2, birthday=$3, species=$4, planet=$5, image=$6
          WHERE id=$1
          RETURNING id, name, birthday, species, planet, image;
      SQL
    )


    # ==================================================
    #                      ROUTES
    # ==================================================

    # get all
    def self.all
      results = DB.exec(
          <<-SQL
              SELECT * FROM aliens
              ORDER BY aliens.id DESC;
          SQL
      )
      return results.map do |result|
        alien = Alien.new(result, result["id"])
        end
    end

    # get one by id
    def self.find(id)
        result = DB.exec_prepared("find_alien", [id]).first
        p result
        if result
          return alien = Alien.new(result, result["id"])
        else
          return {message: "sorry no person found at this id: #{id}", status: 400}
        end
    end

    # create one
    def self.create(opts={})
      results = DB.exec_prepared("create_alien", [opts["name"], opts["birthday"], opts["birthday"], opts["species"], opts["planet"], opts["image"])
      return Alien.new(results.first, results.first["id"])
    end

    # delete one (by id)
    def self.delete(id)
      results = DB.exec_prepared("delete_alien", [id])
      p 'this is the result'
      p results
      if results.first
        return { deleted: true }
      else
        return { message: "sorry cannot find person at id: #{id}", status: 400}
      end
    end

    # update one (by id)
    def self.update(id, opts={})
      results = DB.exec_prepared("update_alien",
        [
          id, [opts["name"], opts["birthday"], opts["birthday"], opts["species"], opts["planet"], opts["image"])
        ]
      )
      if results.first
        return Alien.new(results.first, results.first["id"])
      else
        return { message: "sorry cannot find person at id: #{id}", status: 400}
      end
    end


end

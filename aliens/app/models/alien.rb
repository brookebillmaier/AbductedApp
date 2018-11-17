class Alien
  attr_reader :id, :name, :birthday, :species, :planet, :image


  #connect to heroku / postgres
    if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'aliens_development')
    end


    def initialize(opts ={}, id=nil)
      @id = id.to_i,
      @name = opts["name"]
      @birthday = opts["birthday"]
      @species = opts["species"]
      @planet = opts["planet"]
      @image = opts["image"]
    end

    #get all aliens
    def self.all
      results = DB.exec("SELECT * FROM aliens;")
      return results.map do |result|
        {
          "id" => result["id"].to_i,
          "name"=> result["name"],
          "birthday" => result["birthday"],
          "species" => result["species"],
          "planet" => result["planet"],
          "image" => result["image"],
        }
      end
    end

    # Get one by id

    def self.find(id)
      result = DB.exec("SELECT * FROM aliens WHERE id=#{id};")
      return {
          "id" => result["id"].to_i,
          "name"=> result["name"],
          "birthday" => result["birthday"],
          "species" => result["species"],
          "planet" => result["planet"],
          "image" => result["image"],
      }
    end

    #create alien route
    def self.create(opts)
      results = DB.exec(
        <<-SQL
          INSERT INTO aliens (name, birthday, species, planet, image)
          VALUES ('#{opts["name"]}', '#{opts["birthday"]}', '#{opts["species"]}', '#{opts["planet"]}', '#{opts["image"]}')
          RETURNING id, name, birthday, species, planet, image;
          SQL
      )
      return {
          "id" => result["id"].to_i,
          "name"=> result["name"],
          "birthday" => result["birthday"],
          "species" => result["species"],
          "planet" => result["planet"],
          "image" => result["image"],
      }
    end

    #delete from ID route
    def self.delete(id)
      results = DB.exec("DELETE FROM aliens WHERE id=#{id};")
      return {"deleted" => true}
    end

    #update route
    def self.update(id, opts)
      results = DB.exec(
        <<-SQL
          UPDATE aliens
          SET name='#{opts["name"]}', birthday='#{opts["birthday"]}',
          species='#{opts["species"]}',
          planet='#{opts["planet"]}',
          image='#{opts["image"]}'
          WHERE id=#{id}
          RETURNING id, name, birthday, species, planet, image;
        SQL
      )
      return {
          "id" => result["id"].to_i,
          "name"=> result["name"],
          "birthday" => result["birthday"],
          "species" => result["species"],
          "planet" => result["planet"],
          "image" => result["image"],
      }
    end

end

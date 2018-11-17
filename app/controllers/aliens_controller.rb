class AliensController < ApplicationController
  skip_before_action :verify_authenticity_token

  # get index (all)
  def index
    render json: Alien.all
  end

  # get one (by id)
  def show
    render json: Alien.find(params["id"])
  end

  # create one
  def createOne
    render json: Alien.create(params["alien"])
  end

  # delete one (by id)
  def delete
    render json: Alien.delete(params["id"])
  end

  # update one (by id)
  def update
    render json: Alien.update(params["id"], params["alien"])
  end

end

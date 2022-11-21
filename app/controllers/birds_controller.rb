class BirdsController < ApplicationController

 def index
  b = Bird.all
  render json: b
 end

 def show
  b = Bird.find(params[:id])
  render json: b
 end

end

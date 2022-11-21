class BirdsController < ApplicationController

 def index
  b = Bird.all
  render json: b
 end

 def show
  b = Bird.find(params[:id])
  if b
   render json: b
  else
   render json: { error: "Bird not found" }, status: :not_found
  end
 end

end

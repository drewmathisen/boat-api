class BoatsController < ApplicationController

  def create 
    b = Boat.new( 
      name: params[:name],
      length: params[:length],
      color: params[:color],
      boat_type: params[:boat_type])

    b.save
    render json: b.as_json
  end

end

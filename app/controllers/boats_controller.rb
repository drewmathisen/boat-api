class BoatsController < ApplicationController

  def create 
    b = Boat.new( name:"The French", length: 16, color:"red", boat_type:"speed")
    b.save
    render json: b.as_json
  end

end

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

  def index

    file = "#{Rails.root}/public/boat_data.csv"


    boats = Boat.all

    headers = ["name", "length", "color", "boat_type"]
    
    CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
      boats.each do |boat| 
      writer << [boat.id, boat.name, boat.color, boat.length, boat.boat_type] 
      end
    end
  end

end

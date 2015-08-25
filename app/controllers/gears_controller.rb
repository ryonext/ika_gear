class GearsController < ApplicationController
  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.where(part: Gear.parts[part_param])
  end

  def csv
    @gears = Gear.where(id: params[:gear][:id])
    send_data render_to_string, filename: "gear.csv", type: :csv
  end

  private
    def part_param
      return :head unless params[:part]
      params[:part]
    end
end

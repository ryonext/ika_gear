class GearsController < ApplicationController
  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.where(part: Gear.parts[part_param]).with_bland_and_power
    @part = part_param
  end

  def csv
    @gears = Gear.where(id: gear_ids)
    send_data render_to_string, filename: csv_file_name, type: :csv
  end

  private
    def part_param
      return :head unless params[:part]
      params[:part]
    end

    def csv_file_name
      "#{Time.zone.now}_#{part_param}.csv"
    end

    def gear_ids
      if params[:gear]
        params[:gear][:id]
      end
    end
end

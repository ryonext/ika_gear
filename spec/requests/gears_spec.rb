require 'rails_helper'

RSpec.describe "Gears", type: :request do
  describe "GET /gears" do
    it "works! (now write some real specs)" do
      get gears_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /gears/csv" do
    let(:gear){ Gear.create!(name: "hoge", part: "head", bland_id: bland.id, gear_power_id: gear_power.id) }
    let(:bland){ Bland.create!(name: "hoge_bland") }
    let(:gear_power){ GearPower.create!(name: "hoge_power") }

    it "works! (now write some real specs)" do
      post csv_gears_path, { gear: { id: [gear.id] } }
      expect(response).to have_http_status(200)
    end
  end
end

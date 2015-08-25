require 'rails_helper'

RSpec.describe "gears/index", type: :view do
  before(:each) do
    assign(:gears, [
      Gear.create!(
        :name => "Name",
        :part => 1,
        :gear_power_id => 2,
        :price => 3,
        :salable => false,
        :bland_id => 4
      ),
      Gear.create!(
        :name => "Name",
        :part => 1,
        :gear_power_id => 2,
        :price => 3,
        :salable => false,
        :bland_id => 4
      )
    ])
  end

  it "renders a list of gears" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end

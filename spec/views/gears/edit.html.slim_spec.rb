require 'rails_helper'

RSpec.describe "gears/edit", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!(
      :name => "MyString",
      :part => 1,
      :gear_power_id => 1,
      :price => 1,
      :salable => false,
      :bland_id => 1
    ))
  end

  it "renders the edit gear form" do
    render

    assert_select "form[action=?][method=?]", gear_path(@gear), "post" do

      assert_select "input#gear_name[name=?]", "gear[name]"

      assert_select "input#gear_part[name=?]", "gear[part]"

      assert_select "input#gear_gear_power_id[name=?]", "gear[gear_power_id]"

      assert_select "input#gear_price[name=?]", "gear[price]"

      assert_select "input#gear_salable[name=?]", "gear[salable]"

      assert_select "input#gear_bland_id[name=?]", "gear[bland_id]"
    end
  end
end

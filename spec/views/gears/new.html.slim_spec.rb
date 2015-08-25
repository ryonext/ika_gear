require 'rails_helper'

RSpec.describe "gears/new", type: :view do
  before(:each) do
    assign(:gear, Gear.new(
      :name => "MyString",
      :part => 1,
      :gear_power_id => 1,
      :price => 1,
      :salable => false,
      :bland_id => 1
    ))
  end

  it "renders new gear form" do
    render

    assert_select "form[action=?][method=?]", gears_path, "post" do

      assert_select "input#gear_name[name=?]", "gear[name]"

      assert_select "input#gear_part[name=?]", "gear[part]"

      assert_select "input#gear_gear_power_id[name=?]", "gear[gear_power_id]"

      assert_select "input#gear_price[name=?]", "gear[price]"

      assert_select "input#gear_salable[name=?]", "gear[salable]"

      assert_select "input#gear_bland_id[name=?]", "gear[bland_id]"
    end
  end
end

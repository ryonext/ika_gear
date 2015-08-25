require 'rails_helper'

RSpec.describe "gears/show", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!(
      :name => "Name",
      :part => 1,
      :gear_power_id => 2,
      :price => 3,
      :salable => false,
      :bland_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
  end
end

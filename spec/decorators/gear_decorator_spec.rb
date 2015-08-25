# coding: utf-8
require 'rails_helper'

describe GearDecorator do
  let(:gear) { Gear.new.extend GearDecorator }
  subject { gear }
  it { should be_a Gear }
end

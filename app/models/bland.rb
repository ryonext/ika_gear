class Bland < ActiveRecord::Base
  has_many :gears
  belongs_to :high_rate, foreign_key: :high_appearance_gear_power_id, class_name: GearPower
  belongs_to :low_rate, foreign_key: :low_appearance_gear_power_id, class_name: GearPower
end

class Gear < ActiveRecord::Base
  belongs_to :bland
  belongs_to :gear_power

  enum part: { head: 1, clothes: 2, shoes: 3 }
end

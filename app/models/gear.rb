class Gear < ActiveRecord::Base
  belongs_to :bland
  belongs_to :gear_power

  enum part: { head: 1, clothes: 2, shoes: 3 }

  scope :with_bland_and_power, -> do
    includes(:gear_power).includes(:bland).includes([bland: :high_rate]).includes([bland: :low_rate])
  end

end

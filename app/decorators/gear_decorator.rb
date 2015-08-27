# coding: utf-8
module GearDecorator
  def not_for_sale
    "✓" unless salable
  end
end

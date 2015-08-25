# coding: utf-8
module GearDecorator
  def humanize_part
    case part.to_sym
    when :head
      "アタマ"
    when :clothes
      "フク"
    when :shoes
      "クツ"
    end
  end

  def not_for_sale
    "✓" unless salable
  end
end

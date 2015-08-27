module GearsHelper
  def humanize_part(part)
    case part.to_sym
    when :head
      "アタマ"
    when :clothes
      "フク"
    when :shoes
      "クツ"
    end
  end

  def condition_text(condition)
    part = humanize_part(condition)
    if part
      part
    else
      condition
    end
  end
end

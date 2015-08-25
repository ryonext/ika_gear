require "csv"

CSV.generate do |csv|
  cols = {
    "名前" => ->(g) { g.name },
    "部位" => ->(g) { g.part },
    "メインギアパワー" => ->(g) { g.gear_power.name },
    "価格" => ->(g) { g.price },
    "ブランド" => ->(g) { g.bland.name },
  }
  csv << cols.keys
  @gears.each do |gear|
    csv << cols.map {|k, col| col.call(gear) }
  end
end

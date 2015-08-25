require "csv"

CSV.generate do |csv|
  cols = {
    "名前" => ->(g) { g.name },
    "部位" => ->(g) { g.part },
    "メインギアパワー" => ->(g) { g.gear_power.name },
    "価格" => ->(g) { g.price },
    "非売品" => ->(g) { g.not_for_sale },
    "ブランド" => ->(g) { g.bland.name },
    "付きやすいサブギア" => ->(g) { g.bland.high_rate.name },
    "付きにくいサブギア" => ->(g) { g.bland.low_rate.name },
  }
  csv << cols.keys
  @gears.each do |gear|
    csv << cols.map {|k, col| col.call(gear) }
  end
end

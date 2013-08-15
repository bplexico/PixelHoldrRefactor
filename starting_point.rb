def self.get_hex(color)
  case
    when color.length == 1
      generated_color = color * 6
    when color.length == 2
      generated_color = color * 3
    when color.length == 3
      generated_color = (color[0] * 2) + (color[1] * 2) + (color[2] * 2)
    when color.length < 6 && color.length > 3
      generated_color = color + ("0" * (6 - color.length))
    when color.length > 6
      generated_color = color[0..5]
    else
      generated_color = color
  end

  return "##{generated_color}"
end
class ColorGenerator

  def initialize(color)
    @color = color
  end

  def generated_color
    return make_hex(@color.ljust(6, @color))           if (1..2).include?(@color.length)
    return make_hex(@color.scan(/((.))/).flatten.join) if @color.length == 3
    return make_hex(@color.ljust(6, '0'))              if (4..5).include?(@color.length)
    return make_hex(@color[0..5])                      if @color.length > 6
    return make_hex(@color)
  end

  private

  def make_hex(value)
    "##{value.downcase}"
  end

end

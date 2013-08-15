require_relative 'color_generator'
gem 'minitest'
require 'minitest/autorun'

class ColorGeneratorTest < Minitest::Test

  def test_unhandled_color_returns_value_passed_in
    assert_equal '#d3d3d3', ColorGenerator.new('d3d3d3').generated_color
  end

  def test_only_six_chars_are_returned_when_color_length_gt_six
    assert_equal '#f3f3f3', ColorGenerator.new('f3f3f3987456').generated_color
  end
  
  def test_color_right_padded_with_zero_when_four_or_five
    assert_equal '#ffff00', ColorGenerator.new('ffff').generated_color
  end

  def test_six_char_color_returned_when_3_char_param_given
    assert_equal '#ff33dd', ColorGenerator.new('f3d').generated_color
  end

  def test_six_char_color_returned_when_2_char_param_given
    assert_equal '#f3f3f3', ColorGenerator.new('f3').generated_color
  end

  def test_six_char_color_returned_when_1_char_param_given
    assert_equal '#ffffff', ColorGenerator.new('f').generated_color
  end

  def test_color_is_lowercase_when_caps_passed_in
    assert_equal '#ffffff', ColorGenerator.new('F').generated_color
  end
end

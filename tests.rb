require_relative 'numerals'
require 'minitest/autorun'

class TestEnglishWordsFromNumbers < Minitest::Test

  def setup
    @numerals = Numerals.new
  end

  def teardown; end

  def test_examples
    assert_equal(
      'seven',
      @numerals.convert_to_english_words(7))
    assert_equal(
      'Answer to the Ultimate Question of Life, the Universe, and Everything',
      @numerals.convert_to_english_words(42)
    )
    assert_equal(
      'two thousand and one',
      @numerals.convert_to_english_words(2001)
    )
    assert_equal(
      'nineteen hundred and ninety-nine',
      @numerals.convert_to_english_words(1999)
    )
    assert_equal(
      'seventeen thousand nine hundred and ninety-nine',
      @numerals.convert_to_english_words(17_999)
    )
  end

end
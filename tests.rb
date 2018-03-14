require_relative 'numerals'
require 'minitest/autorun'

class TestEnglishWordsFromNumbers < Minitest::Test

  def setup
    @numerals = Numerals.new
  end

  def teardown; end

  def test_failure
    result = @numerals.convert_to_english_words(1)
    assert(!result.nil?, 'Method does not return anything')
  end

  def test_examples
    assert_equal(
        'zero',
        @numerals.convert_to_english_words(0)
    )
    assert_equal(
      'seven',
      @numerals.convert_to_english_words(7)
    )
    assert_equal(
      'forty-two',
      @numerals.convert_to_english_words(42)
    )
    assert_equal(
      'two thousand and one',
      @numerals.convert_to_english_words(2001)
    )
    assert_equal(
      'one thousand nine hundred ninety-nine',
      @numerals.convert_to_english_words(1999)
    )
    assert_equal(
      'seventeen thousand nine hundred and ninety-nine',
      @numerals.convert_to_english_words(17_999)
    )
  end

  def test_large_numbers
    assert_equal(
      'one million nine hundred ninety-nine thousand nine hundred ninety-nine',
      @numerals.convert_to_english_words(1_999_999)
    )
    assert_equal(
      'one billion',
      @numerals.convert_to_english_words(1_000_000_000)
    )
    assert_equal(
      'one trillion',
      @numerals.convert_to_english_words(1_000_000_000_000)
    )
  end

  def test_type_check
    assert_raises(TypeError) {
      @numerals.convert_to_english_words('a')
    }
    assert_raises(TypeError) {
      @numerals.convert_to_english_words(1.0)
    }
  end

  def test_negative_value_check
    assert_raises(RuntimeError) {
      @numerals.convert_to_english_words(-1)
    }
  end

end
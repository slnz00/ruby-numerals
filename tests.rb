require_relative 'numerals'
require 'minitest/autorun'

class TestEnglishWordsFromNumbers < Minitest::Test

  def setup
    @numerals = Numerals.new
  end

  def teardown; end

end
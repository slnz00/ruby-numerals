class Numerals
  ENGLISH_WORDS = {
    1_000_000_000_000 => 'billion',
    1_000_000 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one',
    0 => 'zero'
  }.freeze

  def self.convert_to_english_words(number)
    raise(TypeError, 'input number must be an integer') unless number.is_a? Integer
    raise('input number must be zero or positive') unless number >= 0
    if number.zero?
      return ENGLISH_WORDS[number]
    else
      return
    end
  end
end

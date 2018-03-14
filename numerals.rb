class Numerals
  ENGLISH_WORDS = {
    1_000_000_000_000 => 'trillion',
    1_000_000_000 => 'billion',
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

  private_class_method
  def converter(number)
    return ENGLISH_WORDS[number] if number < 20

    if number < 100
      mod = number % 10
      suffix = mod.zero? ? '' : "-#{ENGLISH_WORDS[mod]}"
      ENGLISH_WORDS[number - mod] + suffix
    else
      ENGLISH_WORDS.each do |value, name|
        ratio = number / value
        mod = number % value
        return converter(ratio) + " #{name}" if ratio >= 1 && mod.zero?
        return converter(ratio) + " #{name} " + converter(mod) if ratio >= 1
      end
    end
  end

  def convert_to_english_words(number)
    raise(TypeError, 'input number must be an integer') unless number.is_a? Integer
    raise('input number must be zero or positive') unless number >= 0
    return ENGLISH_WORDS[number] if number.zero?

    mod = number % 100
    suffix = ''
    if number > 100 && !mod.zero?
      number -= mod
      suffix += ' and ' + converter(mod)
    end

    converter(number) + suffix
  end
end

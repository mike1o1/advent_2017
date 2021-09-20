class Day4
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    valid_phrases = 0
    input.split("\n").each do |phrase|
      valid_phrases += 1 if passphrase_valid?(phrase)
    end

    valid_phrases
  end

  def problem_2
    secure_phrases = 0
    input.split("\n").each do |phrase|
      secure_phrases += 1 if passphrase_secure?(phrase)
    end

    secure_phrases
  end

  private

  def process_input(input)
    input
  end

  def passphrase_valid?(phrase)
    phrase.split(" ").uniq.length == phrase.split(" ").length
  end

  def passphrase_secure?(phrase)
    sorted = phrase.split(" ").map do |p|
      p.each_char.sort.join
    end

    sorted.uniq.length == phrase.split(" ").length
  end
end

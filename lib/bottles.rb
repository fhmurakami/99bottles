class Bottles
  def verse(number_of_bottles)
    verse1(number_of_bottles) << verse2(number_of_bottles - 1)
  end

  def verses(*number_of_bottles)
    verses = ''

    number_of_bottles.each do |number|
      verses << verse(number)

      unless number == number_of_bottles[-1]
        verses << "\n"
      end
    end

    verses
  end

  def verse1(number_of_bottles)
    if number_of_bottles > 1
      "#{number_of_bottles} bottles of beer on the wall, " \
      "#{number_of_bottles} bottles of beer.\n"
    elsif number_of_bottles == 1
      "#{number_of_bottles} bottle of beer on the wall, " \
      "#{number_of_bottles} bottle of beer.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n"
    end
  end

  def verse2(number_of_bottles)
    verse = 'Take one down and pass it around, ' \

    if number_of_bottles > 1
      verse << "#{number_of_bottles} bottles of beer on the wall.\n"
    elsif number_of_bottles == 1
      verse << "#{number_of_bottles} bottle of beer on the wall.\n"
    elsif number_of_bottles == 0
      verse = 'Take it down and pass it around, '
      verse << "no more bottles of beer on the wall.\n"
    else
      verse = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    verse
  end
end
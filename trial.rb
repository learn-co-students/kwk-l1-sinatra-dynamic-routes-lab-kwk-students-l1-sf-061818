def say_phrase(number, phrase)
  number = number.to_i
  times = 0
  until times == number
    puts "#{phrase}"
    times += 1
  end
end
say_phrase(4, "showmethemoney")
#!/usr/bin/ruby
def greeting()
  puts "Введите имя: "
  name = gets.chomp
  
  puts "Введите фамилию: "
  surname = gets.chomp
  
  puts "Введите возраст: "
  age = gets.to_i

  if age < 18
    puts "Привет, #{name} #{surname}. Тебе меньше 18, но начать учиться программировать никогда не рано"
    "Привет, #{name} #{surname}. Тебе меньше 18, но начать учиться программировать никогда не рано"
    
  else
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
    "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
end

def foobar(one, two)
  if one == 20 or two == 20
    two
  else
    one + two
  end
end
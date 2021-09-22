#!/usr/bin/ruby

def foo(number, word)
  if word[-2, 2] == "CS"
    puts number ** word.length
  else
    puts word.reverse
  end
end

def pokemon
  puts 'How much pokemons do you want?'
  how_much = gets.to_i

  pokemons = []
  how_much.times do
    puts 'Name it: '
    pokemon_name = gets.chomp

    puts 'Color it: '
    pokemon_color = gets.chomp

    pokemon = { name: pokemon_name, color: pokemon_color }
    pokemons << pokemon
    
    puts "You got: #{pokemon}\n\n"

  end
  puts "Your pokemons: #{pokemons}"
end

foo(2, 'HelloHelloCS')
foo(3, "Reverse")

pokemon()
require_relative '../lib.rb'

class CashMachine
  BALANCE = './balance.txt'

  def init
    if !File.exist?(BALANCE)
      @balance = 100.0
    else
      @balance = File.open(BALANCE, &:gets).to_f
    end

    loop do
      puts "Введите желаемое действие:"
      puts "D - Депозит"
      puts "W - Вывод"
      puts "B - Баланс"
      puts "Q - Выход"
      cmd = gets.chomp
      case cmd
      when "D","d"
        deposit
      when "W","w"
        withdraw
      when "B","b"
        get_balance
      when "Q","q"
        break
      else
        puts "Команда была введена неверно. Пожалуйста, выберите один из предоставленных вариантов."
      end
    end

    File.write(BALANCE, @balance)
  end

  def get_balance
    puts "Текущий баланс: #{@balance}"
    @balance
  end

  def deposit
    print "Введите сумму депозита: "
    input = gets
    if float_arg_error?(input)
      puts "Сумма депозита введена неверно. Возможно, вы ввели не числа."
      return 'error'
    end
    dep = input.to_f
    
    if dep < 0 
      puts "Сумма депозита должна быть больше 0."
    else
      @balance += dep
    end
  end

  def withdraw
    print "Введите сумму вывода: "
    input = gets
    if float_arg_error?(input)
      puts "Сумма вывода введена неверно. Возможно, вы ввели не числа."
      return 'error'
    end
    wd = input.to_f
    
    if wd < 0 || wd > @balance
      puts "Сумма вывода должна быть больше 0 и не превышать баланс (#{@balance})."
    else
      @balance -= wd
    end
  end
end

# CashMachine.init
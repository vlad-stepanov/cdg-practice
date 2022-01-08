#!/usr/bin/ruby
require_relative '../lib.rb'

RESULTS = 'result.txt'
STUDENTS = 'students.txt'

def index(file)
    File.foreach(file) { |line| puts line }
end

def find_stud_with_age
    File.truncate(RESULTS, 0)
    index(STUDENTS)
    print "Введите возраст студента: "
    age = gets.chomp
    while (age.to_i > -1)
      put_in_file(where(STUDENTS, age))
      break if files_equals?(STUDENTS, RESULTS)
      print "Введите возраст студента: "
      age = gets.chomp
    end
    index(RESULTS)
  end
  
  def put_in_file(new_line_ids)
    new_line_ids.each do |new_line_id|
      new_line = find(STUDENTS, new_line_id)
      if where(RESULTS, new_line) == []
        results = File.open(RESULTS, "a")
        results.puts(new_line)
        results.close
      end
    end
  end

  # find_stud_with_age
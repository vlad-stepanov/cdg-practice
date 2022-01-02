#!/usr/bin/ruby
PATH = './list.txt'
BUFFER = './buffer.txt'

def index
  File.foreach(PATH) { |line| puts line }
end

def find(id)
  File.foreach(PATH).with_index do |line, index|
    @line = line if index == id
  end

  @line
end

def where(name)
  File.foreach(PATH).with_index do |line, index|
    @line_id = index if line.include?(name)
  end

  @line_id
end

def update(id, name)
  file = File.open(BUFFER, 'w')
  File.foreach(PATH).with_index do |line, index|
    file.puts(id == index ? name : line)
  end
  
  file.close
  File.write(PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, 'w')
  File.foreach(PATH).with_index do |line, index|
    file.puts(line) if id != index
  end

  file.close
  File.write(PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end
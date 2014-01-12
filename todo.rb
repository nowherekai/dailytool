#!/usr/bin/env ruby
FILENAME = 'todo.list'
class ToDO
  def initialize
    unless File.file? FILENAME
      @file = File.open(FILENAME, 'w')
    else
      @file = File.open(FILENAME, 'a+');
      @count = 0
      @file.each do |line|
       @count += 1 if line =~ /^\[\d+\.\]/
      end
    end
  end

  def push(msg)
    @file.puts("[#{@count}.]" + msg)
  end

  def pop(listnum)
  end

  def list
    @file.rewind
    @file.each do |line|
      puts line unless line =~ /^\s+$/
    end
  end
end

t = ToDO.new
if ARGV[0] == 'push'
  if ARGV.length > 1
    t.push(ARGV[1..-1].join)
  end
elsif ARGV[0] == 'list'
  t.list
elsif ARGV[0] == 'pop'
  t.pop(ARGV[1]) unless ARGV[1].nil?
else
  puts "use push/pop/list"
end


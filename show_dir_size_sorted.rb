# require 'pry'
puts "require one directory name" && exit if ARGV.length < 1

ARGV.each do |dir|
  Dir.foreach(dir) do |x| 
    dir_ext_name = "#{dir}/#{x}"
    # binding.pry
    if x != "." && x != ".." && File.directory?(dir_ext_name)
      if (`du -sh #{dir_ext_name}` =~ /(^\w+M)\t/)
        puts "#{x} : #{$1}" if $1.to_i > 100
      end
    end
  end
end

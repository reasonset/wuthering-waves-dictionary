#!/bin/ruby

Dir.glob("src/*").each do |fp|
  fc = File.read(fp)
  ls = fc.each_line.to_a
  unless ls[-1] =~ /\n$/ && fc =~ /\n\Z/
    puts "#{fp} lacks last newline"
    File.open(fp, "w") {|f| f.write(fc + "\n") }
    puts "Added newlien to #{fp}"
  end
end

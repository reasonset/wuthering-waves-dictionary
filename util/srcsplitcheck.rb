#!/bin/ruby

Dir.glob("src/*").each do |fp|
  File.read(fp).each_line do |line|
    next if line =~ /^$/
    sp = line.split("\t")
    if sp.size != 4
      puts "illegal tabs (#{sp.size}) #{line.inspect} at #{fp}"
    end
  end
end

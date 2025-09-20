#!/bin/ruby

ARGF.each do |line|
  unless line =~ /^[\p{Hiragana}ー]+\t.*?\t(?:人名|地名|組織|固有名詞|名詞)\t[^\t]*$/
    p line
  end
  
  elem = line.split("\t")
  e0 = elem[0].unicode_normalize(:nfkc)
  e1 = elem[1].unicode_normalize(:nfkc)
  puts "#{elem[0]} -> #{e0}" if elem[0].delete("!?！？") != e0.delete("!?！？")
  puts "#{elem[1]} -> #{e1}" if elem[1].delete("!?！？") != e1.delete("!?！？")
  if elem[1] =~ /[\u{20000}-\u{2FFFF}]/
    puts "Range #{elem[1]}"
  end
  e1s = elem[1].strip
  puts "#{e1s} has extra space" if elem[1] != e1s
  e2s = elem[2].strip
  puts "#{e1s} has extra space" if elem[2] != e2s
end

#!/bin/ruby

ARGF.each do |line|
  unless line =~ /^[\p{Hiragana}ー]+\t.*?\t(?:人名|地名|組織|固有名詞|名詞)\t/
    p line
  end
end
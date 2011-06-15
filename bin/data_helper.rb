#!/usr/bin/env ruby
#
# get ascii.yaml into txt file, ready for the database script.
#

require 'yaml'

ascii = YAML.load_file('data/ascii.yaml')
foo = 1
File.open('data/diceware_ascii.txt','w') do |f|
    ascii.each do |i|
        i.each do |j|
            j.each do |k|
                f.puts "#{foo}#{i.index(j)+1}#{j.index(k)+1} #{k}"
            end
        end
        foo += 1
    end
end

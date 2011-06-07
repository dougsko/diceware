#!/usr/bin/env ruby
#
# Make a database for Diceware
#

require 'rubygems'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite:///home/doug/bin/diceware/data/diceware.db')

class Word
    include DataMapper::Resource

    property :_id, Serial
    property :number, String
    property :word, String
end

class DiceDB
    def create
        DataMapper.auto_migrate!

        File.open('/home/doug/bin/diceware/data/diceware.wordlist.txt') do |f|
            f.readlines.each do |line|
                Word.create(
                    :number => line.chomp.split("\t")[0],
                    :word => line.chomp.split("\t")[1]
                )
            end
        end
    end

    def test(number)
        word = Word.all(:number => number)
        word[0].word
    end
end

db = DiceDB.new
puts db.test('12345')

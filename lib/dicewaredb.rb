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

class Alphanumeric
    include DataMapper::Resource

    property :_id, Serial
    property :number, String
    property :char, String
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

        File.open('/home/doug/bin/diceware/data/diceware_alphanum.txt') do |f|
            f.readlines.each do |line|
                Alphanumeric.create(
                    :number => line.chomp.split(" ")[0],
                    :char => line.chomp.split(" ")[1]
                )
            end
        end
    end

    def test
        word = Word.all(:number => '11111')
        puts word[0].word
        char = Alphanumeric.all(:number => '42')
        puts char[0].char
    end
end

db = DiceDB.new
db.create
db.test

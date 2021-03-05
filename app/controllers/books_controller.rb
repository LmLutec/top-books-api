require 'pry'

class BooksController < ApplicationController
    # attr_accessor :title, :author, :release_date, :genre, :description
        
    # @@all = []

    def index 
        books = Book.all 
    end 

    def create 
        book = Book.create(book_params)
byebug
    end 
#    def initialize(title, author, release_date, genre, description)
#      @title = title 
#      @author = author 
#      @release_date = release_date
#      @genre = genre 
#      @description = description
#      @@all << self 
#    end
   
#    def self.create_list
#      Scraper.new.combine_info if @@all.empty? 
 
#      @@all.each_with_index do |book, index|
#        if book.title != nil
#          puts "#{index + 1}: #{book.title}"
#        end 
#      end 
 
#    end 
   
#    def self.all 
#      @@all
#    end 

private
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :genre, :description)
    end 


end

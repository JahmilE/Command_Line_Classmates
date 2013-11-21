#BLUEPRINT


#1. require the libraries that we need specifically open-uri and nokogiri in this case
require "open-uri" #open the file on the internet on line #18
require "nokogiri" #use on line #10 use the nokogiri class and call the html methods which takes files that are in html files and translates it into a format that html



#CODE
#create an attr_reader  



class Scraper
  attr_reader :html

  def initialize(url)
   download = open(url)
   @html = Nokogiri::HTML(download)
  end 


  def get_student_names
   # @html.search(whatever you want ex: "h3"-tag or fa or "div"-div tag or "a"- anchor tag or "a i"- all the i elements inside anchor tags) then create a bucket to dump the information into
    all_the_h3s = @html.search("h3")
    all_the_h3s.text
  end



  def get_blog_url
    blog_url = html.search(".blog:href")
  end

  def get_twitter_handle
    new_array = []
    twitter_handle = html.search("li a").text.split(" ")
    twitter_handle.each do |element|
      if element[0] == "@"
        new_array << element
      end
end

my_scraper= Scraper.new(http://flatironschool-bk.herokuapp.com/)
puts my_scraper.download.html.inspect


#html element attributes - you need to find out how to access twitter user name 

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
#puts my_scraper.html
#puts my_scraper.get_students_names
#puts my_scraper.get_twitter_handle
puts my_scraper.get_blog_url


#we call "nokogiri" is a class, "HTML" class method is inside, we pass download to HTML method
#HTML is a method that makes the file #<File:0x007fcb04057dd8> pretty and usable in ruby
# class::class_method
# class::constant
#we store the return value of the method open in the var download
#we keep it local because we're going to use it to create html instance var
#.search is a nokogiri method

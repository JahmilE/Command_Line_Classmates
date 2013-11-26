require "open-uri" 
require "nokogiri"


class Scraper
  attr_reader :html

  def initialize(url)
   download = open(url)
   @html = Nokogiri::HTML(download)
  end 

  def get_student_names
  
    all_the_h3s = @html.search("h3")
    all_the_h3s.text
  end



  def get_blog_url
   html.css('.blog').map {|link| link["href"]}
  end

  def get_twitter_handle
    new_array = []
    twitter_handle = html.search("li a").text.split(" ")
    twitter_handle.each do |element|
      if element[0] == "@"
        new_array << element
      end

end


#get_namewo_Regex
def get_student_names
html.search("h3").collect {|h3| h3.text}
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
puts my_scraper.get_blog_url
# require './lib/*' (library)

# 1. make a new scraper
# 	# my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
# 2. get the student names from the scraper
# 	#names = my_scraper.get_student_names
# 3. get the blogs
# 4. get the twitter
# 5. make a new student object for each person
#6


# class - Student
# class - Scraper

# # end up with 28 objects in the app

# scraper.rb sends out
#  - gives out names
#  - twitters
#  - blog url


# student.rb
#  -takes and receives names
#  -takes and recieves twitters
#  - takes and recieves blog

#  app
#  scrapper
#   - student1
#   -student2
#   -student3

require "./lib/students.rb"
require "/.lib/scrapper.rb"
require "launchy"
require "debugger"

student_scraper = Scraper.new("http:flatironschool-bk.herokuapp.com/")

names = student_scraper.get_student_names
twitters = student_scraper.get_twitters
blogs = student_scraper.get_blogs




def page_launch(student_names,)

students = []
28.times do |i|
  student<<Studnet.new(names[i], twitters[i], blogs[i])
  end










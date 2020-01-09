# adding students into array
students = [
  "Dr. Hannible Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the west",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
#print them

puts "The Sudents of Villans Acadmey" # title
puts "-----------------"
students.each { |student|
puts student }
#printing the totat students
puts "Overall, we have #{students.count} great students"

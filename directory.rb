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

def print_header # title
  puts "The Sudents of Villans Acadmey"
  puts "-----------------"
end
def print(names)
  names.each { |student|
  puts student }
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
#printing the totat students

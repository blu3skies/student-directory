def input_students
  puts "please enter the names of the students"
  puts "To finish, just hit the return twice"
  #empty array
  students = []
  #get the names
  name = gets.chomp
  #begin while loop
  while !name.empty? do
    # add the student has into array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another student
    name = gets.chomp
  end
  #return the array
  students
end

# adding students into array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

def print_header # title
  puts "The Sudents of Villans Acadmey"
  puts "-----------------"
end

def print(students)
  counter = 1
  students.each { |student|
    if student[:name].length < 12
      puts "#{counter}. #{student[:name]} (#{student[:cohort]} cohort)"
      counter += 1
    end
  }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
puts
print_footer(students)
#printing the totat students

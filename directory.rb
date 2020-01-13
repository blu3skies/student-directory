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

def print_header # title
  puts "The Sudents of Villans Acadmey"
  puts "-----------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
puts

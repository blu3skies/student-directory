def interactive_menu
  students = []
  loop do
    #1. prints menu of possiblities
    puts "1. Input the student"
    puts "2. Show the students"
    puts "9. Exit"
    #2.read the input and save it to variable
    selection = gets.chomp
    #3.do what user asks
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      break
    else
      puts "I don't know what you mean, try again"
    end
  end
end

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

interactive_menu



def input_students
  #empty array
  students = []
  #get the names

  #begin while loop
  loop do
    puts "please enter the names of the students"
    puts "To finish, just type 'quit'"
    name = gets.chomp
    if name == "quit"
      break
    end
    puts "input hobby"
    hobby = gets.chomp
    puts "input country of birth"
    birth_place = gets.chomp
    puts "input height"
    height = gets.chomp

    # add the student has into array
    students << {
      name: name,
      cohort: :november,
      hobby: hobby,
      birth_place: birth_place,
      height: height
    }
    
  end
  students
end


def print_header # title
  puts "The Sudents of Villans Acadmey"
  puts "-----------------"
end

def print(students)
  counter = students.count
  #students.each { |student|
    until counter == 0
      puts "#{students[counter-1][:name]} (#{students[counter-1][:cohort]} cohort)"
      puts "#{students[counter-1][:hobby]} #{students[counter-1][:birth_place]} #{students[counter-1][:height]}"
      counter -= 1
    end

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

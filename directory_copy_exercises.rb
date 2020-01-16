

def input_students
  #empty array
  students = []
  default_month = "november"
  #get the names

  #begin while loop
  loop do
    puts "please enter the names of the students"
    puts "To finish, just type 'quit'"
    name = gets.sub!("\n", "")
    if name == "quit"
      break
    end
    puts "input hobby"
    hobby = gets.sub!("\n", "")
    puts "input country of birth"
    birth_place = gets.sub!("\n", "")
    puts "input height"
    height = gets.sub!("\n", "")
    puts "input month (default is #{default_month})"
    month = gets.sub!("\n", "")

    if month == ""
      month = default_month
    end

    # add the student has into array
    students << {
      name: name,
      cohort: month,
      hobby: hobby,
      birth_place: birth_place,
      height: height
    }

  end
  students
end


def print_header # title
  puts "The Sudents of Villans Acadmey"
  puts "----------".center(20)
end

def print(students)
  students.map do |student|
      puts "Student name = #{student[:name]} (#{student[:cohort]} cohort)"
      puts "Favorite hobby = #{student[:hobby]}"
      puts "birth place = #{student[:birth_place]}"
      puts "Height = #{student[:height]}"
    end
end

def print_footer(names)
  statement = "We have #{names.count} student"
  if names.count < 2
    puts statement
  else
    puts statement + "s"
  end
end

students = input_students
print_header
print(students)
puts
print_footer(students)
#printing the totat students

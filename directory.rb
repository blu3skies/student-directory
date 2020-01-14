

@students = []

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_student_list
  student_count
end

def input_students
  puts "please enter the names of the students"
  puts "To finish, just hit the return twice"
  @name = STDIN.gets.chomp
  while !@name.empty? do
    add_student(@name)
    student_count
    @name = STDIN.gets.chomp
  end
end

def print_header
  puts "The Sudents of Villans Acadmey"
  puts "-----------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def student_count
  puts "We have #{@students.count} students"
end

def process(selection)
  case selection
  when "1"
    puts "You selected '1', inputting students"
    input_students
  when "2"
    puts "You selected '2', showing you students now"
    show_students
  when "3"
    puts "You selected '3', saving students now"
    save_students
  when "4"
    puts "You selected '4', loading students now"
    load_students
  when "9"
    puts "You selected '9', Goodbye!"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
file = File.open("students.csv", "r")
file.readlines.each do |line|
  @name, @cohort = line.chomp.split(',')
    add_student(@name, @cohort)
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  filename = "students.csv" if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

def add_student(name, cohort = :november)
  @students << {name: name, cohort: cohort.to_sym}
end

try_load_students
interactive_menu

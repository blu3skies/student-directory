

  @students = []

  def interactive_menu
    loop do
      #1. prints menu of possiblities
      print_menu
      #2.read the input and save it to variable
      process(gets.chomp)
      #3.do what user asks
    end
  end

  def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit" # 9 because we'll be adding more items
  end

  def show_students
    print_header
    print_student_list
    print_footer
  end

  def input_students
    puts "please enter the names of the students"
    puts "To finish, just hit the return twice"
    #get the names
    name = gets.chomp
    #begin while loop
    while !name.empty? do
      # add the student has into array
      @students << {name: name, cohort: :november}
      puts "Now we have #{@students.count} students"
      #get another student
      name = gets.chomp
    end
  end

  def print_header # title
    puts "The Sudents of Villans Acadmey"
    puts "-----------------"
  end

  def print_student_list
    @students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end

  def print_footer
    puts "Overall, we have #{@students.count} great students"
  end

  def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
    end
  end

  def save_students
    file = File.open("students.csv", "w")
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(", ")
      file.puts csv_line
    end
    file.close
  end

  interactive_menu

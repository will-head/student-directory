# Set $debug to true to enable additional output, disable for rspec
$debug = true

# let's put all students into an array
# =begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
# =end
def interactive_menu
#   stop = true
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    selection = gets.chomp.to_i
#     break if move == "stick"
#     hand.push(random_card)
#     total = score(hand)
#     busted = true if total > 21
#     break if busted
#     puts "Score so far: #{total}"
    case selection
    when 1
      puts "Input was 1" if $debug
    when 2
      puts "Input was 2" if $debug
    when 9
      puts "Input was 9" if $debug
    else
      puts "I don't know what you meant, try again"
    end
    break if selection == 9
  end
end
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = [] 
  # get the first name 
  name = gets.chomp 
  # while the name is not empty, repeat this code 
  while !name.empty? do 
    # add the student hash to the array 
    students << {name: name, cohort: :november} 
    puts "Now we have #{students.count} students" 
    # get another name from the user 
    name = gets.chomp
  end 
  # return the array of students
  students
end
def print_header
  # Stolen from John Baxter
  header = "The students of Villains Academy"
  puts header
  puts "-" * header.length
end
def print_details(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_extra_details(students)
  students.each_with_index do |student,index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# call methods
students = input_students if !$debug
interactive_menu
# print_header
# print_extra_details(students)
# print_footer(students)


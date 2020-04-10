# let's put all students into an array
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
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# call methods
print_header
print_details(students)
print_footer(students)

=begin
# and then print them
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
# finally, we print the total
puts "Overall, we have #{students.count} great students"
=end
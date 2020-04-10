# let's put all students into an array
students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex DeLarge", :november],
  ["The Wicked Witch of the West", :november],
  ["Terminator", :november],
  ["Freddy Krueger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]
def print_header
  # Stolen from John Baxter
  header = "The students of Villains Academy"
  puts header
  puts "-" * header.length
end
def print_details(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
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
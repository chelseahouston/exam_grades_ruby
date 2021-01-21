# Grading Criteria ---
# 9: 99 – 100
# 8: 94 – 98
# 7: 89 – 93
# 6: 78 – 88
# 5: 67 – 77
# 4: 56 – 66
# 3: 41 – 55
# 2: 26 – 40
# 1: 11 – 25
# U: 0 – 10
# End Grading Criteria ---

# Subject Name ---
print "Please enter the Subject: "
subject = gets.chomp

# Score ---
print "Please enter your score out of 100: "
score = gets.to_i

# Convert Score to Grade ---
if score >= 99
  grade = 9
elsif score >= 94 && score <= 98
  grade = 8
elsif score >= 89 && score <= 93
  grade = 7
elsif score >= 78 && score <= 88
  grade = 6
elsif score >= 67 && score <= 77
  grade = 5
elsif score >= 56 && score <= 66
  grade = 4
elsif score >= 41 && score <= 55
  grade = 3
elsif score >= 26 && score <= 40
  grade = 2
elsif score >= 11 && score <= 25
  grade = 1
else
  grade = 0
end

# Class with Comment Congratulating high scorers ---
class Comment
  def well_done
    puts "Well Done!"
  end
  def good_attempt
    puts "Good Attempt!"
  end
  def zero
    puts "Unlucky."
  end
end
comment = Comment.new

# Print Results ---
puts "Your #{subject} score is #{score}/100 and you are awarded Grade: #{grade}."
if grade >= 5
  puts comment.well_done
elsif grade <= 4 && grade > 0
  puts comment.good_attempt
elsif grade == 0
  puts comment.zero
end

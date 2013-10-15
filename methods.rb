# METHODS
# -------------
#
# Here's an example of a Ruby method:
#
def roll_dice(upper_limit)
  number = rand(1..upper_limit)
  puts "You rolled a " + number.to_s
end

roll_dice 6
roll_dice 8
roll_dice 12


# CHALLENGE #1:
#
# Copy your solution from CHALLENGE #3 in strings.rb.
#

me = "Tess is from Minnetonka"
thea = "Thea is from Eden Prarie"
ian = "Ian is from Castle Rock"
amanda = "Amanda is from Helotes"

def display_tess(person)
  line = "-" * 60
  puts line
  puts "|" + person.center(line.length-2) + "|"
  puts line
end

display_tess(me)
display_tess(thea)
display_tess(ian)
display_tess(amanda)

# line = "-" * 36
# puts line
# puts "|" + me.center(line.length-2) + "|"
# puts line

# line = "-" * 36
# puts line
# puts "|" + neal.center(line.length-2) + "|"
# puts line

# line = "-" * 36
# puts line
# puts "|" + mike.center(line.length-2) + "|"
# puts line


# line = "-" * 36
# puts line
# puts "|" + vince.center(line.length-2) + "|"
# puts line



# Deaf Grandma Challenge
# ----------------------------------------------------------------------
#
# Whatever you say to Grandma (whatever you type in),
# she should respond with this:
#
# HUH?!  SPEAK UP, SONNY!
#
# unless you shout it (type in all capitals).
# If you shout, she can hear you (or at least she thinks so) and yells back:
#
# NO, NOT SINCE 1938!
#
# To make your program really believable, have Grandma shout
# a different year each time, maybe any year at random between 1930 and 1950.

puts "Hi Jason, what are you up to?"
phrase = gets.chomp
if phrase == phrase.upcase
  year = rand(1900...1999)
  puts "NO, NOT SINCE #{year}!"
else
  puts "HUH?!  SPEAK UP, SONNY!"
end

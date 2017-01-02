# Rodrigo Rosmaninho 2017
# With help from StackOverflow
from datetime import date

# Helps keep track of a personal streak I have
d0 = date(2016, 12, 29)
d1 = date.today()
delta = d1 - d0

print "Recovery at: " + str(delta.days) + "%"


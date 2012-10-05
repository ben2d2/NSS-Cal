# require 'lib/cal'
require 'lib/year'

#month=ARGV[0]
year=ARGV[0]


#calendar = Calendar.new(month, year)
#calendar.generate_cal

y = YearCalendar.new year.to_i
y.quarter_1
print "\n"
y.quarter_2
print "\n"
y.quarter_3
print "\n"
y.quarter_4
print "\n"



################

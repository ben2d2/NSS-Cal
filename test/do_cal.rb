require 'lib/cal'

month=ARGV[0]
year=ARGV[1]


calendar = Calendar.new(month, year)
puts calendar.generate_cal(month, year)



			
			
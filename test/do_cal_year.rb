year=ARGV[0]

require 'lib/year'



calendar = Year.new(year)
calendar.generate_cal_year(year)




			
			
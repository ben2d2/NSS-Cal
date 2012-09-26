class Calendar
	
month=ARGV[0]
year=ARGV[1]

puts " "+" "+" "+month+" "+year+" "+" "+" "
puts "SU MO TU WE TH FR SA"

	def initialize(year)
		@year=year
	end

	FOUR_YRS = 4
	ONE_HUNDRED_YRS = 100
	FOUR_HUNDRED_YRS = 400

	def is_leap_year?
		if @year % FOUR_YRS == 0 
			true
		elsif @year % ONE_HUNDRED_YRS == 0
			false
		elsif @year % FOUR_HUNDRED_YRS == 0
			false
		else
			false
		end
	end

	day_of_month=1

	def march_offset(month)
		((month+1)*26/10).floor
	end

	def leap_year_offset(year)
		(year/4).floor+6*(year/100).floor+(year/400).floor
	end

	def day_of_week(month, day_of_month, year)
		(day_of_month+march_offset(month)+year+leap_year_offset(year))%7
	end

	def days_in_month(month, year)#calls number of arguments for test line #13 in test file
		#determine how many days per month - uses is_leap_year to count for Feb
		if is_leap_year? && month == 2 
			days_range = (1..29).to_a
		elsif is_leap_year? && month == 2
			days_range = (1..28).to_a
		elsif month == 4||month == 6||month == 9||month == 11
			days_range = (1..30).to_a
		else
			days_range = (1..31).to_a
		end	
		puts days_range.inspect
	end
	def month_name(month)
		month_nm=["January","February","March","April","May","June","July","August","September","October","November","December"]
		month=month_nm[month]
		puts month
	end
 
	def generate_cal(month, year)	
    days_range{|x| puts x}
	end
end
			
			
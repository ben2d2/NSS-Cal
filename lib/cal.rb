class Calendar

	def initialize(month, year)
		@year=year.to_i
		@month=month.to_i
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
			true
		else
			false
		end
	end
	
	def day_of_week(month, year)
		if month == 1||month == 2
			month += 12
			year -= 1
		end
		leap_year_offset = (year/4).floor+6*(year/100).floor+(year/400).floor
		march_offset = ((month+1)*26/10).floor
		(1+march_offset+year+leap_year_offset)%7
	end


		


	def days_in_month#calls number of arguments for test line #13 in test file
		#determine how many days per month - uses is_leap_year to count for Feb
		if is_leap_year? && @month == 2 || @month == 14
			days_range = (1..29).to_a
		elsif @month == 2 || @month == 14
			days_range = (1..28).to_a
		elsif @month == 4||@month == 6||@month == 9||@month == 11
			days_range = (1..30).to_a
		else
			days_range = (1..31).to_a
		end	
		blankstr=""
		j=0
		i=0
		days_range.each {|m|
			if m.to_s.length<2
			digit_space=" "
			else
			digit_space=""
			end

		zellers=day_of_week(@month, @year)
		if zellers == 0
			zellers = 6
		else
			zellers=zellers-1
		end
		zel_offset=zellers-zellers

		if i == zel_offset
			start = "   "*zellers
		else
			start = ""
		end
		i+=1


			if j == 6-zellers||j == 6-zellers+7||j == 6-zellers+14||j == 6-zellers+21||j == 6-zellers+28
				line_break="\n"
			else
				line_break=""
			end
			charac=digit_space, m
			print start, charac,  " ", line_break
		j+=1
	}
		blankstr=""
		
	end
	def month_name(month)
		month_nm=["January","February","March","April","May","June","July","August","September","October","November","December"]
		month=month_nm[month]
	end
 
	def generate_cal(month, year)
		month=month.to_i
		year=year.to_i
		mn_title=month_name(month-1)
		yr_title=year
		title=mn_title.to_s+" "+yr_title.to_s
		puts title.center(20)
		puts "Su Mo Tu We Th Fr Sa"
		print days_in_month
	end
end
			
			
class Calendar

	def initialize(month, year)
		#set year to integer
		@year=year.to_i
		#set month to integer
		@month=month.to_i
	end
	#declare constants for leap year calculation
	FOUR_YRS = 4
	ONE_HUNDRED_YRS = 100
	FOUR_HUNDRED_YRS = 400

	def is_leap_year?
		#this statement is returning false
		@year % 100 != 0 && (@year % 400 == 0 || @year % 4 == 0)
		# #if year % by 4 = 0 make is leap year true
		# if @year % FOUR_YRS == 0 
		# 	true
		# #if year % 100 = 0 make is leap year false
		# elsif @year % ONE_HUNDRED_YRS == 0
		# 	false
		# #if year % 400 = 0 make isn leap year true
		# elsif @year % FOUR_HUNDRED_YRS == 0
		# 	true
		# #if not any above make is leap year false
		# else
		# 	false
		# end
	end
	
	def day_of_week
		#Use Zeller's Congruence to determine start day of each month http://en.wikipedia.org/wiki/Zeller%27s_congruence (Implementation in Software)
		#convert January & Februray for Zeller's & reduce year by 1
		if @month < 3
			@month += 12
			@year -= 1
		end
		#calculate leap year offset for Zeller's
		leap_year_offset = (@year/FOUR_YRS).floor + 6 * (@year/ONE_HUNDRED_YRS).floor + (@year/FOUR_HUNDRED_YRS).floor
		#calculate march offset for Zeller's
		march_offset = ((@month + 1) * 26 / 10).floor
		#calculate Zeller's for start day of month/week
		(1+march_offset+@year+leap_year_offset)%7
	end

	def days_in_month
		#reset month to 2 if 14
		if @month == 14
			@month = 2
		end
		#is_leap_year returns false so this makes feb a non-leap year
		if is_leap_year? && @month == 2
			days_range = (1..28)
		#get days range for feb year
		elsif @month == 2
			days_range = (1..29)
		#get days range for april, june, sept & nov
		elsif @month == 4||@month == 6||@month == 9||@month == 11
			days_range = (1..30)
		#get days range for all other months
		else
			days_range = (1..31)
		end	
		days_range
	end

	def zellers_reset
		#reset zeller number for more accurate comparisons with my days_range array(changes zellers range from 1..6,0 to 0..6)
		zellers = day_of_week
			if zellers == 0
				zellers = 6
			else
				zellers = zellers - 1
			end
		zellers
	end

	def zellers_offset
		#creates indention offset for the start day of the week of each month
		"   "*zellers_reset
	end

	def week_breaks
		#create new remaining_weeks array to hold weeks 2 - 5
		remaining_weeks = []
		#create new array to hold all weeks in a given month
		weeks = []
		#create reference to array by subtracting zellers_reset integer from 7. this will refer to the first week's ending day in array
		zel = 7-zellers_reset.to_i
		#push first zel number of days to first bucket in array
		weeks<<days_in_month.to_a.first(zel)
		#push remaining days to an array to prepare to slice remaining weeks
		remaining_weeks<<days_in_month.to_a.drop(zel)
		#flatten array to prepare to slice remaining weeks
		remaining_weeks.flatten!
		#add remaining weeks to weeks_array in seperate buckets split by 7. completes array of arrays of weeks per month
		weeks += remaining_weeks.each_slice(7).to_a
		weeks
	end


	def month_name(month)
		#month name array
		month_nm = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		#gets month from array based on ARGV month or test month
		month = month_nm[month]
	end

	def generate_cal
		#set new var for string concotenation
		month_title = month_name(@month - 1)
		#set new var for string concotenation
		yr_title = @year
		#set vars to string and concotenate
		title = month_title.to_s + " " + yr_title.to_s
		#week day name string
		weekdays = "Su Mo Tu We Th Fr Sa"
		#print title(month/year) centered in 20 spaces
		puts title.center(20)
		#puts week day names for columns
		puts weekdays
		#prints indention offset for first weekday of the month
		print zellers_offset
		#begin printing calendar
		week_breaks[0].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		week_breaks[1].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		week_breaks[2].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		week_breaks[3].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		week_breaks[4].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		#if given month has six weeks print 6th week
		if week_breaks[5] == nil
		else
		week_breaks[5].each{|d| print d.to_s.rjust(2), " "}
		print "\n"
		end
	end
end
			
			
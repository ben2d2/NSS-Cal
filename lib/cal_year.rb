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
		#if year % by 4 = 0 make is leap year true
		if @year % FOUR_YRS == 0 
			true
		#if year % 100 = 0 make is leap year false
		elsif @year % ONE_HUNDRED_YRS == 0
			false
		#if year % 400 = 0 make isn leap year true
		elsif @year % FOUR_HUNDRED_YRS == 0
			true
		#if not any above make is leap year false
		else
			false
		end
	end
	
	def day_of_week(month, year)
		#convert January & Februray for Zeller's & reduce year by 1
		if month == 1||month == 2
			month += 12
			year -= 1
		end
		#calculate leap year offset for Zeller's
		leap_year_offset = (year/FOUR_YRS).floor+6*(year/ONE_HUNDRED_YRS).floor+(year/FOUR_HUNDRED_YRS).floor
		#calculate march offset for Zeller's
		march_offset = ((month+1)*26/10).floor
		#calculate Zeller's for start day of month/week
		(1+march_offset+year+leap_year_offset)%7
	end

	def days_in_month

		#get day range for feb in leap year
		if is_leap_year? && @month == 2 || @month == 14
			days_range = (1..29).to_a
		#get days range for feb non-leap year
		elsif @month == 2 || @month == 14
			days_range = (1..28).to_a
		#get days range for april, june, sept & nov
		elsif @month == 4||@month == 6||@month == 9||@month == 11
			days_range = (1..30).to_a
		#get days range for all other months
		else
			days_range = (1..31).to_a
		end	
		#loop through days_range array
		
	end

	def month_name(month)
		#month name array
		month_nm=["January","February","March","April","May","June","July","August","September","October","November","December"]
		#gets month from array based on ARGV month or test month
		month=month_nm[month]
	end
 
	def push_to_array(month, year)
		#convert month string to integer
		month=month.to_i
		#convert year string to integer
		year=year.to_i
		#set new var for string concotenation
		mn_title=month_name(month-1)
		#set new var for string concotenation
		yr_title=year
		#set vars to string and concotenate
		title=mn_title.to_s+" "+yr_title.to_s
		#week day name string
		weekdays="Su Mo Tu We Th Fr Sa"
		#print title(month/year) centered in 20 spaces
		mn_ar=Array.new
		mn_ar<<[title.center(20)]
		#puts week day names for columns
		mn_ar<<[weekdays]
		#print days in month array
		mn_ar<<[days_in_month]
	end

	def generate_cal(month, year)
	while month == 1 || month ==2 do
		print push_to_array(month, year)[0], "  "

		break
	end 
	while month ==3 do
		print push_to_array(month, year)[0], "\n"

		break
	end 
	end
end
			

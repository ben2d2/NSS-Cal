require 'lib/cal'


class YearCalendar
	def initialize(year)
		@year = year
		@months = []
		@zellers = []
		12.times do |i|
			@months << Calendar.new(i+1, @year)
			@zellers << Calendar.new(i+1, @year)
		end
		print @year.to_s.center(69)
		print "\n\n"

	end

	def quarter_1
		i = 0
		j = 0
		#set new var for string concotenation
		monthly_breaks = @months.map { |m| m.week_breaks}
		zel = @zellers.map {|z| z.zellers_offset}
		k = 0
		month_nm = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		3.times do
			print month_nm[k].center(21), " "
			k+=1
		end
		print "\n"
		3.times do
		 	weekdays = "Su Mo Tu We Th Fr Sa  "
			print weekdays.rjust(21)
		end
		print "\n"

			6.times do
				3.times do
				weeks = monthly_breaks[i][j]
					if weeks == nil
						print "                     "
					else
						weeks.collect! {|d|	d.to_s.rjust(2) + " "}
						if i == 2 || i == 5 || i == 8 || i == 11 || i == 14
							line_end = "\n"
						else
							line_end = " "
						end
						if j == 0
							week_print = weeks.to_s.rjust(21), line_end
						else
							week_print = weeks.to_s.ljust(21), line_end
						end
				print week_print
				i += 1
				end	
			end
		j += 1
		i = 0
		end
	end
	def quarter_2
		i = 3
		j = 0
		#set new var for string concotenation
		monthly_breaks = @months.map { |m| m.week_breaks}
		zel = @zellers.map {|z| z.zellers_offset}
		k = 3
		month_nm = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		3.times do
			print month_nm[k].center(21), " "
			k+=1
		end
		print "\n"
		3.times do
		 	weekdays = "Su Mo Tu We Th Fr Sa  "
			print weekdays.rjust(21)
		end
		print "\n"

			6.times do
				3.times do
				weeks = monthly_breaks[i][j]
					if weeks == nil
						print "                     "
					else
						weeks.collect! {|d|	d.to_s.rjust(2) + " "}
						if i == 2 || i == 5 || i == 8 || i == 11 || i == 14
							line_end = "\n"
						else
							line_end = " "
						end
						if j == 0
							week_print = weeks.to_s.rjust(21), line_end
						else
							week_print = weeks.to_s.ljust(21), line_end
						end
				print week_print
				i += 1
				end	
			end
		j += 1
		i = 3
		end
	end
	def quarter_3
		i = 6
		j = 0
		#set new var for string concotenation
		monthly_breaks = @months.map { |m| m.week_breaks}
		zel = @zellers.map {|z| z.zellers_offset}
		k = 6
		month_nm = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		3.times do
			print month_nm[k].center(21), " "
			k+=1
		end
		print "\n"
		3.times do
		 	weekdays = "Su Mo Tu We Th Fr Sa  "
			print weekdays.rjust(21)
		end
		print "\n"

			6.times do
				3.times do
				weeks = monthly_breaks[i][j]
					if weeks == nil
						print "                     "
					else
						weeks.collect! {|d|	d.to_s.rjust(2) + " "}
						if i == 2 || i == 5 || i == 8 || i == 11 || i == 14
							line_end = "\n"
						else
							line_end = " "
						end
						if j == 0
							week_print = weeks.to_s.rjust(21), line_end
						else
							week_print = weeks.to_s.ljust(21), line_end
						end
				print week_print
				i += 1
				end	
			end
		j += 1
		i = 6
		end
	end
	def quarter_4
		i = 9
		j = 0
		#set new var for string concotenation
		monthly_breaks = @months.map { |m| m.week_breaks}
		zel = @zellers.map {|z| z.zellers_offset}
		k = 9
		month_nm = ["January","February","March","April","May","June","July","August","September","October","November","December"]
		3.times do
			print month_nm[k].center(21), " "
			k+=1
		end
		print "\n"
		3.times do
		 	weekdays = "Su Mo Tu We Th Fr Sa  "
			print weekdays.rjust(21)
		end
		print "\n"

			6.times do
				3.times do
				weeks = monthly_breaks[i][j]
					if weeks == nil
						print "                     "
					else
						weeks.collect! {|d|	d.to_s.rjust(2) + " "}
						if i == 2 || i == 5 || i == 8 || i == 11 || i == 14 || i == 17
							line_end = "\n"
						else
							line_end = " "
						end
						if j == 0
							week_print = weeks.to_s.rjust(21), line_end
						else
							week_print = weeks.to_s.ljust(21), line_end
						end
				print week_print
				i += 1
				end	
			end
		j += 1
		i = 9
		end
	end
end			

			
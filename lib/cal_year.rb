require 'lib/cal'
class Year

def initialize(year)
#set year to integer
@year=year.to_i
end

def generate_cal_year(year)
month_ar=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
month_ar.each {|m|
month = m
calendar = Calendar.new(month, year)
calendar.generate_cal

}
end
end
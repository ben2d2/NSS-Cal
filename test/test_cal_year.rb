require 'test/unit'
require 'lib/cal'

class CalendarTest < Test::Unit::TestCase


	def test01_is_leap_year
		cal = Calendar.new(2, 2012)
        assert_equal(true, cal.is_leap_year?)
    end

    def test02_no_of_days_in_month
    	cal = Calendar.new(2, 2011)
    	assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 ,23, 24, 25, 26, 27, 28], cal.days_in_month)
    end

    def test03_no_of_days_in_month_range_length
        cal = Calendar.new(2, 2012)
        assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 ,23, 24, 25, 26, 27, 28, 29],cal.days_in_month)
    end

    def test07_day_of_week
        cal = Calendar.new(10, 1976)
        assert_equal(6, cal.day_of_week(10, 1976))
    end

    def test08_day_of_week
        cal = Calendar.new(6, 1955)
        assert_equal(4, cal.day_of_week(6, 1955))
    end

    def test09_month_name
        cal = Calendar.new(3, 2012)
        assert_equal("March", cal.month_name(2))
    end

    def test10_month_name
        cal = Calendar.new(9, 2012)
        assert_equal("October", cal.month_name(9))
    end

    def test11_generate_cal_output
        cal=Calendar.new(10, 2012)
        expected=nil
        assert_equal(cal.generate_cal(10, 2012), expected)
    end

end
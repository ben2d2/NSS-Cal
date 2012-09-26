require 'test/unit'
require 'lib/cal'

class CalendarTest < Test::Unit::TestCase


	def test01_is_leap_year
		cal = Calendar.new(2001)
        assert_equal(false, cal.is_leap_year?)
    end

    def test02_no_of_days_in_month
    	cal = Calendar.new(2012)
    	assert_equal(29, cal.days_in_month(2, 2012))
    end

    def test03_no_of_days_in_month_range_length
        cal = Calendar.new(2012)
        assert_equal(29, cal.days_in_month(2, 2012))
    end

    def test04_march_offset
    	cal = Calendar.new(2012)
    	assert_equal(36, cal.march_offset(13))
    end

    def test05_leap_year_offset
        cal = Calendar.new(2012)
        assert_equal(628, cal.leap_year_offset(2012))
    end

    def test06_leap_year_offset
        cal = Calendar.new(1955)
        assert_equal(606, cal.leap_year_offset(1955))
    end

    def test07_day_of_week
        cal = Calendar.new(1835)
        assert_equal(4, cal.day_of_week(7, 1, 1835))
    end

    def test08_day_of_week
        cal = Calendar.new(1955)
        assert_equal(4, cal.day_of_week(6, 1, 1955))
    end

    def test09_month_name
        cal = Calendar.new(2012)
        assert_equal("March", cal.month_name(2))
    end

    def test10_month_name
        cal = Calendar.new(2012)
        assert_equal("October", cal.month_name(9))
    end
end
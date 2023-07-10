def calculation

  @seconds_in_year = 31536000
  @seconds_in_day = 86400
  @seconds_in_hour = 3600
  @seconds_in_minute = 60
  @input = gets.chomp.to_i

  if @input > 0

    def years_calculation
      @number_of_years = @input/@seconds_in_year.to_f
      @total_years = @input/@seconds_in_year
    end

    def days_calculation
      @days = @number_of_years-@total_years
      @number_of_days = (@days * @seconds_in_year)/@seconds_in_day
      @total_days = @number_of_days.to_i
    end

    def hours_calculation
      @hours = @number_of_days -@total_days
      @number_of_hours = (@hours * @seconds_in_day)/@seconds_in_hour
      @total_hours = @number_of_hours.to_i
    end


    def minutes_calculation
      @minutes = @number_of_hours - @total_hours
      @number_of_minutes = (@minutes * @seconds_in_hour)/@seconds_in_minute
      @total_minutes = @number_of_minutes.to_i
    end

    def seconds_calculation
      seconds = ((@number_of_minutes-@total_minutes)*60).to_i
    end

    display_years = "#{years_calculation} years"
    display_days = "#{days_calculation} days, "
    display_hours = "#{hours_calculation} hours, "
    display_minutes = "#{minutes_calculation} minutes and "
    display_seconds = "#{seconds_calculation} seconds"

    puts "#{display_years if years_calculation > 1}#{display_days if days_calculation > 1}#{display_hours if hours_calculation > 1}#{display_minutes if minutes_calculation > 1}#{display_seconds if seconds_calculation > 1}"
  else
    "Now"
  end
end

puts calculation

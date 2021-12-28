class Lasagna
    EXPECTED_MINUTES_IN_OVEN =40
    def remaining_minutes_in_oven(actual_minutes_in_oven)
         remaining_minutes = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
        return remaining_minutes
    end
    def preparation_time_in_minutes(layers)
     return layers*2 
    end
    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
     return preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    end
  end
  puts Lasagna.new.total_time_in_minutes(
    number_of_layers: 1,
    actual_minutes_in_oven: 30
  )
   
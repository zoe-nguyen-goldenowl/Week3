class Attendee
    def initialize(height)
      @height = height
    end
  
    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
    def revoke_pass!
      @pass_id = nil
    end
    def has_pass?
      if @pass_id != nil
        return true
      else
      return false
      end
    end
    # rubocop:enable Naming/PredicateName
  
    def fits_ride?(ride_minimum_height)
      if ride_minimum_height <= @height
        return true
      else 
      return false
      end
    end
    def allowed_to_ride?(ride_minimum_height)
      if has_pass? && fits_ride?(ride_minimum_height)
        return true
      else 
      return false
      end 
    end
  end
  attendee = Attendee.new(100)
  attendee.issue_pass!(42)
  p attendee.allowed_to_ride?(120)  
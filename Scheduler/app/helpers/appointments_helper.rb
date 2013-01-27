module AppointmentsHelper
  def duration_array
    first_array = [15]
      11.times do
        n = first_array.last + 15
        first_array << n
      end
    return first_array
  end

  def convert_mins_to_hours
    duration_array.collect do |mins|
      if mins/60 == 0
        label = mins.to_s + ' minutes'
      elsif mins % 60 == 0
        label = (mins/60).to_s + " hours"
      elsif mins % 60 != 0
        label = (mins/60).to_s + " hour " + (mins % 60).to_s + " minutes"
      end
      [label, mins]
    end
  end
end

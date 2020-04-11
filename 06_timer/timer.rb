class Timer
  def seconds
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    seconds = @seconds
    hours = (seconds/3600).floor
    seconds = seconds - (hours * 3600)
    minutes = (seconds/60).floor
    seconds = seconds - (minutes * 60)
    padded(hours) + ':' + padded(minutes) + ':' + padded(seconds)
  end
  
  def padded(num)
    if num == 0
      num = "00"
    elsif num.digits.length == 1
      num = "0" + num.to_s
    else
      num = num.to_s
    end
  end
end
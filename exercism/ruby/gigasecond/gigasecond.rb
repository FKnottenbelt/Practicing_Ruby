class Gigasecond
  def self.from(start_time)
    secs = 1000000000
    start_time + secs
  end
end

class BookKeeping
  VERSION = 6
end
class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report_length
    return "Counted to #{@count} so far."
  end
end

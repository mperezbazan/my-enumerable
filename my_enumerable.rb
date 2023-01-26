module MyEnumerable
  def any?
    output = []
    @list.each { |n| output.push(n) if yield n }
    !output.empty?
  end

  def all?
    output = []
    @list.each { |n| output.push(n) if yield n }
    output.length == @list.length
  end

  def filter
    output = []
    @list.each { |n| output.push(n) if yield n }
    output
  end
end

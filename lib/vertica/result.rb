class Vertica::Result
  include Enumerable
  
  attr_reader :rows, :columns

  def initialize(columns)
    @columns, @rows = columns, []
  end

  def each_row(&block)
    @rows.each(&block)
  end
  
  alias_method :each, :each_row

  def row_count
    @rows.size
  end

  alias_method :size, :row_count
  alias_method :length, :row_count
end

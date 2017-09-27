module BookKeeping
  VERSION = 1
end

class Bst
  include Enumerable
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(item)
    # Adds a new item to the tree (recursive)
    if item <= @data
      @left ? @left.insert(item) : @left = Bst.new(item)
    else
      @right ? @right.insert(item) : @right = Bst.new(item)
    end
  end

  def each(&block)
    return enum_for(:each) unless block_given?
    @left.each(&block) if @left
    yield @data
    @right.each(&block) if @right
  end

end
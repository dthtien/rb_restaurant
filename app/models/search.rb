class Search
  attr_reader :term

  def initialize(options = {})
    @term = options.fetch(:term, "")
  end
  
  def food_items
    FoodItem.search(term)
  end

  def username
    User.search_username(term)
  end
  
end
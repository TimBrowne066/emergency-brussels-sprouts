class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients
  attr_writer :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def which_ingredient
    return @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients.clear
  end

  def fill_with_ingredient(ingredient)
    current_weight = 0
    until maximum_holding_weight == current_weight do
      @ingredients << ingredient
      current_weight += ingredient.weight
    end
      @weight = ((@ingredients.count * ingredient.weight) + weight)
  end

end

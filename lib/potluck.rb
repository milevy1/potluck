class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select{ |dish| dish.category == category }
  end

  def menu
    menu_hash = {}
    # Group dishes by category
    menu_hash_temporary = @dishes.group_by { |dish| dish.category }
    # Convert to form of just :category => dish.name
    # Store in menu_hash
    menu_hash_temporary.each { |key, value|
      plural_category = (key.to_s + "s").to_sym
      menu_hash[plural_category] = value.map { |dish| dish.name }
    }
    # Sort dish.names alphabetically
    menu_hash.each { |key, value|
      value.sort!
    }
  end

end

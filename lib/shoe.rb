class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
      BRANDS << brand 
  end
  
  def duplicate(brands)
    duplicates = brands.select.map { |b| brands.count(b) > 1 }
    duplicates.uniq 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
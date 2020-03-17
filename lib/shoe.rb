class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
      BRANDS << brand 
  end
  
  def duplicate(@brand)
    duplicates = @brand.select.map { |b| @brand.count(b) > 1 }
    duplicates.uniq << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
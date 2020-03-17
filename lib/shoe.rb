class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS.select { |b| BRANDS.count(b) > 1 }.uniq
      BRANDS << brand 
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
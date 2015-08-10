class Parcel
  define_method(:initialize) do | length, width, height, weight |
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volumize_the_things) do
    @volume = @length * @width * @height
  end

  define_method(:cost_to_ship_my_pants) do
    if @weight <= 20
      25
    elsif @weight > 20 && @weight <= 50
      40
    elsif @weight > 50
      75
    else
      0
    end
  end
end

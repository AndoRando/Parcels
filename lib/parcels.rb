class Parcel
  define_method(:initialize) do | length, width, height, weight |
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volumize_the_things) do
    @length * @width * @height
  end

  define_method(:cost_to_ship_my_pants) do
    #logic goes somewhere else
  end
end

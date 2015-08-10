require('rspec')
require('parcels')

describe(Parcel) do
  describe("#volumize_the_things") do
    it("return the product of all three dimensions: length, width, height") do
      test_parcel = Parcel.new(6, 4, 2, 50)
      expect(test_parcel.volumize_the_things()).to(eq(48))
    end
  end

  describe("#cost_to_ship_my_pants") do
    it("describes the cost to ship a parcel at the lowest weight tier") do
      test_parcel = Parcel.new(6, 4, 2, 15)
      expect(test_parcel.cost_to_ship_my_pants()).to(eq(25))
    end
    it("describes the cost to ship a parcel at the middle weight tier") do
      test_parcel = Parcel.new(6, 4, 2, 30)
      expect(test_parcel.cost_to_ship_my_pants()).to(eq(40))
    end
    it("describes the cost to ship a parcel at the highest weight tier") do
      test_parcel = Parcel.new(6, 4, 2, 80)
      expect(test_parcel.cost_to_ship_my_pants()).to(eq(75))
    end
  end
end

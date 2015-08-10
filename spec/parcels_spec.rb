require('rspec')
require('parcels')

describe(Parcel) do
  describe("#volumize_the_things") do
    it("return the product of all three dimensions: length, width, height") do
      test_parcel = Parcel.new(6, 4, 2, 50)
      expect(test_parcel.volumize_the_things()).to(eq(48))
    end
  end
end

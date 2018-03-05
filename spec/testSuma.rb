require './Suma'

RSpec.describe Suma, "#result" do
  context "Test for suma" do
    it "Se inicia una instancia" do
      suma = Suma.new(2,3)
      puts suma.inspect
      expect(suma.result).to eq 5
    end
  end
end

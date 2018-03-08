require './Suma'
require './Resta'

RSpec.describe Suma, "#result" do
  context "Test for suma" do
    it "Se inicia una instancia" do
      suma = Suma.new(2,3)
      puts suma.inspect
      expect(suma.result).to eq 5
    end
  end

  context "Test For two sumas" do
    it "Se inicia una instancia" do
      suma = Suma.new(10,10)
      puts suma.inspect
      expect(suma.result).to eq 20
    end
  end

  context "Know if is" do
    it "Se inicia una instancia" do
      suma = Suma.new(15,10)
      puts suma.inspect
      puts suma.element1
      expect(suma.element1).to be > suma.element2
    end
  end
end

RSpec.describe "Using an array as a stack" do
  def build_stack
    []
  end

  def numberAux
    50
  end

  before(:example) do
    @stack = build_stack
    @aux = numberAux
  end

  it 'is initially empty' do
    expect(@stack).to be_empty
  end

  it 'is numberAux with value' do
    puts @aux
    expect(@aux).to_not be_nil 
  end

  context "after an item has been pushed" do
    before(:example) do
      @stack.push :item
    end

    it 'allows the pushed item to be popped' do
      expect(@stack.pop).to eq(:item)
    end
  end
end

RSpec.describe "Comparate Arrays" do 
  def generateArray
    [1,2,3,4,5,5,6]
  end

  before(:example) do 
    @list = generateArray
  end

  it 'was generated list' do
    puts "*"*100
    expect(@list.size).to be > 2 
  end

  it 'list evary element is greater than 1' do
    @list.each do |e|
      expect(e).to be > 0
    end 
  end

  it 'list evary element is greater than 1' do
    result = @list.all?{ |e| e >0 }
    expect(result).to be true
  end

  it 'list evary element is greater than 1' do
    @list.all?{ |e| e >0 } == true
  end

  it 'list include  1' do
    expect(@list).to include(1)
    #expect(@list).to include(20)
  end
end

RSpec.describe "Compare String" do 
  def getAString
    "hola q ace"
  end

  before(:example) do
    @word = getAString
  end

  it 'Should is true' do
    @word == "Hola q ace"
  end

  it 'Should is true' do
    expect(@word).to start_with("hol")
    expect(@word).to include("hola")
    expect(@word).to eq("hola q ace")
  end
end

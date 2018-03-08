class Resta
    attr_accessor  :element1, :element2
  
    def initialize(element1 ,element2)
      @element1 = element1
      @element2 = element2
    end
  
    def result()
      @element1 - @element2
    end
end
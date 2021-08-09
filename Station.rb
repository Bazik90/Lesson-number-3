  class Station
    attr_reader :trains
    
    def initialize(name)
      @name = name
      @trains = []
    end
    
    def add_train(train)
       @train << train
    end
    
    def trains_by_type(type)
      trains = @trains.select { |train| train.type == type}
      trains.size
    end
    
    def send_train(train)
       @trains.delete(train)
    end
  end
		
	
	
	

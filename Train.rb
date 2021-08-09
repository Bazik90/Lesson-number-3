  class Train
  attr_reader :number, :type, :wagons, :current_station, :current_speed
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @current_speed = 0
  end
  
  def accelerate(values)
    @current_speed += values if values.positive?
  end
    
  def decelerate(values)
    @current_speed -= values if values <= @current_speed && values.positive?
  end
  
  def attach_wagon
    @wagons += 1 if @current_speed.zero?
  end
  
   def detach_wagon
    @wagons -= 1 if @current_speed.zero? && @wagons.positive?
  end
  
   def getting_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station.arrive(self)
  end
  
  def move_forwards
  return unless @current_station
  current_index = @route.stations.find_index(@current_station)
  return unless current_index + 1 < @route.stations.count
   @current_station.delete(self)
   @current_station = @route.stations[current_index + 1]
   @current_station.arrive(self)
  end
   
   def move_backwards
    
  end
   
    def previous_station
  end
  
   def next_station
   end
  end

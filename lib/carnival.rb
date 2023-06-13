class Carnival
  attr_reader :rides, :duration

  def initialize
    @duration = 14
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_profitable_ride
    most_profit = 0
    most_prof_ride = nil
    @rides.each do |ride|
      if ride.total_revenue > most_profit
        most_profit = ride.total_revenue
        most_prof_ride = ride
      else
      end
    end
    most_prof_ride
  end

  def most_popular_ride
    most_times_ridden = 0
    most_pop_ride = nil
    @rides.each do |ride|
      if ride.rider_log.values.sum > most_times_ridden
        most_times_ridden = ride.rider_log.values.sum
        most_pop_ride = ride
      else
      end
    end
    most_pop_ride
  end

  def total_revenue
    revenue = 0
    @rides.each do |ride|
      revenue += ride.total_revenue
    end
    revenue
  end
end
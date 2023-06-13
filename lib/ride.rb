class Ride
  attr_reader :name, :min_height, :admission_fee, :excitement, :rider_log, :total_revenue

  def initialize(attributes)
    @name = attributes[:name]
    @min_height = attributes[:min_height]
    @admission_fee = attributes[:admission_fee]
    @excitement = attributes[:excitement]
    @rider_log = Hash.new(0)
    @total_revenue = 0
  end

  def board_rider(rider)
    if rider.preferences.include?(@excitement) && rider.tall_enough?(@min_height) && rider.spending_money >= @admission_fee
      @total_revenue += admission_fee
      rider.spending_money -= admission_fee
      @rider_log[rider] += 1
    else
      p "This visitor is unable to ride."
    end
  end
end
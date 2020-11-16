class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.all
    # all
  end

  def self.longest
    Boats.longest.boat_classifications
    # Boat.longest.classifications
  end

end

class Location < ActiveRecord::Base

  #attr_accessible :address, :latitude, :longitude
  #geocoded_by :address
  #after_validation :geocode
  
  has_many :comments

end

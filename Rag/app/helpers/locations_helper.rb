module LocationsHelper
  def location_map_url
    "http://maps.google.com/maps/?q=" + @location.latitude.to_s + "," + @location.longitude.to_s
  end
  def random_location_map_url
    "http://maps.google.com/maps/?q=" + @random_location.latitude.to_s + "," + @random_location.longitude.to_s
  end

end

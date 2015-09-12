module LocationsHelper
  def location_map_url(location)
    "http://maps.google.com/maps/?q=" + location.latitude.to_s + "," + @location.longitude.to_s
  end

end

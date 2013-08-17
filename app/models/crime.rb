class Crime < ActiveRecord::Base
  
geocoded_by :address
after_validation :geocode
acts_as_gmappable :process_geocoding => false
after_validation :geocode
  def gmaps4rails_infowindow
         "<h4>#{name}</h4>" << "<h4>#{address}</h4>"
  end
end

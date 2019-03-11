class Estimate < ApplicationRecord
 geocoded_by :departure_location, :latitude => :departure_location_lat, :longitude => :departure_location_long
  geocoded_by :arrival_location, :latitude => :arrival_location_lat, :longitude => :arrival_location_long
  after_validation :geocode_endpoints, if: :will_save_change_to_departure_location?
  after_validation :geocode_endpoints, if: :will_save_change_to_arrival_location?


  	def geocode_endpoints
	    if departure_location_changed?
	      geocoded = Geocoder.search(departure_location).first
	      if geocoded
	        self.departure_location_lat = geocoded.latitude
	        self.departure_location_long = geocoded.longitude
	      end
	    end
	    if arrival_location_changed?
	      geocoded = Geocoder.search(arrival_location).first
	      if geocoded
	        self.arrival_location_lat = geocoded.latitude
	        self.arrival_location_long= geocoded.longitude
	      end
	    end
	end


end

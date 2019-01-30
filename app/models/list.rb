class List < ApplicationRecord
  geocoded_by :lead_origin, :latitude => :lead_origin_lat, :longitude => :lead_origin_long
  geocoded_by :lead_destination, :latitude => :lead_destination_lat, :longitude => :lead_destination_long
  after_validation :geocode, if: :will_save_change_to_lead_origin?
  after_validation :geocode_endpoints, if: :will_save_change_to_lead_destination?


  def geocode_endpoints
	    if lead_origin_changed?
	      geocoded = Geocoder.search(lead_origin).first
	      if geocoded
	        self.lead_origin_lat = geocoded.latitude
	        self.lead_origin_long = geocoded.longitude
	      end
	    end
	    if lead_destination_changed?
	      geocoded = Geocoder.search(lead_destination).first
	      if geocoded
	        self.lead_destination_lat = geocoded.latitude
	        self.lead_destination_long= geocoded.longitude
	      end
	    end
	end

end

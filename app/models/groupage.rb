class Groupage < ApplicationRecord
	geocoded_by :origin
  	after_validation :geocode, if: :will_save_change_to_address?

	include PgSearch
	  	pg_search_scope :search_by_name_and_description,
	    	against: [ :origin],
	    	using: {
	      		tsearch: { prefix: true
	    }
	}


end

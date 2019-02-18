class Container < ApplicationRecord
	has_one :groupage
	belongs_to :user

	validates :container_size, :volume, :metrics, :price, :currency,  presence: true, on: :update

	# validates :container_size, :volume, :metrics, :price, :currency,  presence: true, if: :should_validate?


	CONTAINERS = [
					["20’ container (6 meters container)", 30],
					["40’ container (12 meters container)", 60]
					
				]
	# validates :container_size, inclusion: {in: CONTAINERS}

	METRIC = [
				["m3 - cubic meters", 1],
				["cuft - cubic feet", 35,3147]
			]
	# validates :metrics, inclusion: {in: METRIC}

	CURRENCIES = ["EUR", "USD", "GBP", "CHF", "***", "AUD", "BRL", "CAD", "CHF",
								"CLP", "CNY", "CZK", "DKK", "HKD", "HUF", "IDR", "ILS", "INR",
								"JPY", "KRW", "MXN", "MYR", "NOK", "NZD", "PHP", "PKR", "PLN" , 
								"RUB", "SEK", "SGD", "THB", "TRY", "TWD", "ZAR"
								]
	# validates :currency, inclusion: {in: CURRENCIES}

	def should_validate?
    	new_record? || volume.present?

  	end


end



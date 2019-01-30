class Container < ApplicationRecord
	has_one :groupage
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

	CURRENCIES = @currencies = ["EUR", "USD", "GBP", "CAD", "CHF"]
	# validates :currency, inclusion: {in: CURRENCIES}
end

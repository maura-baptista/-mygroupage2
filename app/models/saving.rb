class Saving < ApplicationRecord
	CONTAINERS = [
					["20’ container (6 meters container)", 30],
					["40’ container (12 meters container)", 40],
					["LCL (less than a container load)", 60]
				]
	validates :container, inclusion: {in: CONTAINERS}

	METRIC = [
				["m3 - cubic meters", 1],
				["cuft - cubic feet", 35,3147]
			]
	validates :metrics, inclusion: {in: METRIC}

	CURRENCIES = @currencies = ["EUR", "USD", "GBP", "CAD", "CHF"]
	validates :currency, inclusion: {in: CURRENCIES}
end

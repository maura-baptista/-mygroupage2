class Alert < ApplicationRecord
	validates :alert_email, presence: true

	MOVE_SIZE = ["Full contents of your home","Some boxes and some furniture", "10 boxes or less"]
	validates :move_size, inclusion: {in: MOVE_SIZE}
end

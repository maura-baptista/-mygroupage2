class Alert < ApplicationRecord
	validates :alert_email, presence: true
end

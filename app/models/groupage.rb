class Groupage < ApplicationRecord
  belongs_to :user
  belongs_to :container


	PHONE_PREFIX = @currencies = ["+33", "+44", "+35", "+61", "+1"]
	# validates :phone_prefix, inclusion: {in: PHONE_PREFIX}
end

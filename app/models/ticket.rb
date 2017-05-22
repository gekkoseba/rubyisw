class Ticket < ApplicationRecord
  belongs_to :operator, inverse_of: :tickets , required: true

  after_initialize :init

  private
	def init
	 if self.new_record?
	    self.state = 0
	 end
	end
end

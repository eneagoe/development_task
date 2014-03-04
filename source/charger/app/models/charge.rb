class Charge < ActiveRecord::Base

  belongs_to :customer

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :unsuccessful, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }

end

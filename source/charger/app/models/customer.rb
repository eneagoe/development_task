class Customer < ActiveRecord::Base

  has_many :charges

  def main_charge
    charges.order('amount DESC').first
  end

  def full_name
    [first_name, last_name].join(" ")
  end

  alias :to_s :full_name

end

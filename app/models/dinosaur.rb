class Dinosaur < ApplicationRecord

  def self.order_by_name
    order(:name)
  end

  def is_baby?
    age > 4
  end

end

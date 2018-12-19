class Order < ApplicationRecord
  belongs_to :location
  belongs_to :product
  has_one  :report
end

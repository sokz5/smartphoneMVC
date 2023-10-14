class Device < ApplicationRecord
  belongs_to :maker
  belongs_to :brand
  belongs_to :storage
  belongs_to :color
end

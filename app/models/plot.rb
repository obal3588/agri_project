class Plot < ApplicationRecord
  belongs_to :farm
  has_many :logs
end

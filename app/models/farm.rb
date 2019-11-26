class Farm < ApplicationRecord
  has_many :plots, dependent: :destroy
end

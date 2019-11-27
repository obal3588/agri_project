class Farm < ApplicationRecord
  has_many :plots, dependent: :destroy
  has_many :logs, dependent: :destroy
end

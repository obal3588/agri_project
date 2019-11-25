class Farm < ApplicationRecord
    has_many :fields , dependent: :destroy
    end

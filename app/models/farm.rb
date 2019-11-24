class Farm < ApplicationRecord
    has_many :Field, , dependent: :destroy
end

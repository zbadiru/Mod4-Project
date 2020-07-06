class JoinTable < ApplicationRecord
    belongs_to :order
    belongs_to :phone
end

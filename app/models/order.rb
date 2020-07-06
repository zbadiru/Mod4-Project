class Order < ApplicationRecord
    belongs_to :user
    has_many :join_tables
    has_many :phones, through: :join_table
end

class Phone < ApplicationRecord
    has_many :join_tables
    has_many :orders, through: :join_table
end

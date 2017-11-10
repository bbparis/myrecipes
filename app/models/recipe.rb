class Recipe < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length:{ minumum:5, maximum: 500}
    belongs_to :chef
    validates :chef_id, presence: true
end
class Shoe < ApplicationRecord
    belongs_to :brand
    has_many :reviews


    validates :name, presence: true
    validates :image, presence: true
end

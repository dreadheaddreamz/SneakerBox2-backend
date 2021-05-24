class Shoe < ApplicationRecord
    belongs_to :brand
    has_many :reviews


    validates :name, presence: true
    validates :image, presence: true


    def brand_attributes=(attributes)
        self.brand = Brand.find_or_create_by(attributes) if !attributes['name'].empty? #finds or creates brands by name
        self.brand
      end
end

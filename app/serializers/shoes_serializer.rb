class ShoesSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :description, :image
  has_many :reviews
end

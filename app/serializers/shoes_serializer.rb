class ShoesSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :description, :image
end

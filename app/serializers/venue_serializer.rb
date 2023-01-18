class VenueSerializer < ActiveModel::Serializer
  attributes :name, :description, :num_baths, :num_beds, :manager_id, :location
end

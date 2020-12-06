module Types
  class AppartmentType < Types::BaseObject
    graphql_name "Appartment"
    field :id, ID, null: false
    field :room_type, String, null: false
    field :description, String, null: false
    field :resort_id, ID, null: false 
  end
end

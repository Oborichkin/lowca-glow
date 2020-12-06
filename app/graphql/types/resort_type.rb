module Types
  class ResortType < Types::BaseObject
    graphql_name "Resort"
    description "A Resort Type"

    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :description, String, null: true
    field :appartments, [Types::AppartmentType], null: true do
        argument :limit, Integer, default_value: 15, required: false,
        prepare: -> (limit, ctx) {[limit, 30].min}
    end

    def appartments(limit:)
      object.appartments.limit(limit)
    end
  end
end

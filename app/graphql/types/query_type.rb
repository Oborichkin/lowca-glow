module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: "An example field added by the generator"

    def test_field
      "Hello World!"
    end

    field :all_resorts, [ResortType], null: false do
      argument :size, Int, required: false, default_value: 15
    end

    def all_resorts(size:)
      Resort.all.limit(size)
    end

    # One resort
    field :resort, ResortType, null: false do
      argument :id, ID, required: true
    end

    def resort(id:)
      Resort.find(id)
    end

    # All appartments
    field :all_appartments, [AppartmentType], null: false do
      argument :size, Int, required: false, default_value: 15
    end

    def all_appartments(size:)
      Appartment.all.limit(size)
    end

    # One appartment
    field :appartment, AppartmentType, null: false do
      argument :id, ID, required: true
    end

    def appartment(id:)
      Appartment.find(id)
    end
  end
end

module Types
  class MutationType < Types::BaseObject
    field :create_resort, ResortType, null: false do
      argument :name, String, required: true
      argument :email, String, required: true
    end

    def create_resort(name:, email:)
      Resort.create(name: name, email: email)
    end

  end
end

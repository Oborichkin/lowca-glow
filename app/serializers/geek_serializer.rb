class JobSerializer < ActiveModel::Serializer
  attributes :name, :stack, :cv
end

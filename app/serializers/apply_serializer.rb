class ApplySerializer < ActiveModel::Serializer
  attributes :job_id, :geek_id, :invited, :read
end

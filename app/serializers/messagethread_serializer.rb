class MessagethreadSerializer < ActiveModel::Serializer
  attributes :id,:topic,:description,:created_at,:phone
end

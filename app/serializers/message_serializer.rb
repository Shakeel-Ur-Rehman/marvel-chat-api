class MessageSerializer < ActiveModel::Serializer
  attributes :id,:to,:from,:body,:created_at
end

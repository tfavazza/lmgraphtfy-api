class GraphSerializer < ActiveModel::Serializer
  attributes :id, :graphJSON, :user_id
end

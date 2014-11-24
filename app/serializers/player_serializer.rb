class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :vocation_name, :world_name, :level
end

class ProjectSerializer < ActiveModel::Serializer
  attributes :id,:name,:description,:expectations,:timeline,:team_size
end

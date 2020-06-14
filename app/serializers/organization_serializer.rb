class OrganizationSerializer < ActiveModel::Serializer
  attributes :id,:name,:category,:email,:phone,:mission,:location,:image,:website,:twitter,:instagram,:facebook,:logo
  has_many :projects
end

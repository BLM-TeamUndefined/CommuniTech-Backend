class OrganizationSerializer < ActiveModel::Serializer
  attributes :id,:name,:category,:description,:email,:phone,:mission,:location,:image,:website,:twitter,:instagram,:facebook,:logo
end
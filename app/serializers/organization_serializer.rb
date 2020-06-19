class OrganizationSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id,:name,:category,:email,:phone,:mission,:location,:image,:website,:twitter,:instagram,:facebook,:logo, :projects
=======
  attributes :id,:name,:category,:email,:phone,:mission,:location,:image,:website,:twitter,:instagram,:facebook,:logo
  has_many :projects
>>>>>>> add0b17b867cf685db3e707b9cb9ef74b8ecfee7
end

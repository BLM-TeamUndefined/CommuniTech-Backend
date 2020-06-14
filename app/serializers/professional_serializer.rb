class ProfessionalSerializer < ActiveModel::Serializer
  attributes :id,:username,:email,:tech_stack,:bio,:profession, :projects
end

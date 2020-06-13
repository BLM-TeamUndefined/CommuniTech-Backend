class ProfessionalSerializer < ActiveModel::Serializer
  attributes :id,:username,:email,:password_digest,:tech_stack,:bio,:profession
end

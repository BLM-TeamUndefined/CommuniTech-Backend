class ProjectSerializer < ActiveModel::Serializer
  attributes :id,:name,:description,:expectations,:timeline,:team_size,:organization

  def organization
    
 
    {
      id: self.object.organization.id,
      name: self.object.organization.name,
      category: self.object.organization.category,
      email: self.object.organization.email,
      phone: self.object.organization.phone,
      mission: self.object.organization.mission,
      location: self.object.organization.location,
      image: self.object.organization.image,
      website: self.object.organization.website,
      twitter: self.object.organization.twitter,
      instagram: self.object.organization.instagram,
      facebook: self.object.organization.facebook,
      logo: self.object.organization.logo
    }
      

    

  end

end

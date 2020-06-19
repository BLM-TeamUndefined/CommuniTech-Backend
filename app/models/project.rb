class Project < ApplicationRecord
  belongs_to :organization
  has_many :project_professionals
  has_many :professionals, through: :project_professionals
end

class Professional < ApplicationRecord
    has_many :project_professionals
    has_many :projects, through: :project_professionals

    has_secure_password
end

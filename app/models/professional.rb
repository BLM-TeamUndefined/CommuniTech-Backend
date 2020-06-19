class Professional < ApplicationRecord
    has_many :project_professionals
    has_many :projects, through: :project_professionals

    has_secure_password

    validates :username, length: { in: 4..16 }, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
end

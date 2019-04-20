class User < ApplicationRecord
  belongs_to :role

  has_many :tasks

  has_secure_password
end

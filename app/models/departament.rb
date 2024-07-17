class Departament < ApplicationRecord

  has_many :user_departaments
  has_many :users, through: :user_departaments


end

class UserDepartament < ApplicationRecord
  belongs_to :user
  belongs_to :departament
end

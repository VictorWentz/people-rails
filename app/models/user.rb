class User < ApplicationRecord


  before_save :set_name, :set_username, :set_email
  has_many :user_departaments
  has_many :departaments, through: :user_departaments

  validates :job_grade, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 11 }

  JOB_GRADE = 1..11


  private
  def set_name
    self.name = self.first_name.downcase + " " + self.last_name.downcase
  end
  def set_username
    self.username = self.name.gsub(" ", "_")
  end

  def set_email
    self.email = self.username + "@vitu.com"
  end


end

class User < ApplicationRecord

  before_save :set_name, :set_username, :set_email
  has_many :departaments


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

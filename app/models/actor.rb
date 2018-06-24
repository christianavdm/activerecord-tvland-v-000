class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end

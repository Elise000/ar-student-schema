require_relative '../../db/config'

class Student < ActiveRecord::Base

attr_accessor :first_name, :last_name, :birthday

  # validates :first_name, :presence => true

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :message => "error"}

  validates :email, :uniqueness => true

  validates :age, :numericality => {:greater_than => 4}

  validates :phone, :format => { :with => /\D\d{3}\D{2}\d{3}\D\d{4}\D{2}\d{4}/, :message => "error phone"}

# validates :email, :format => { :with => /[a-z]*@[a-z]*.[a-z]{2,}/, :message => "error"}

#     validates :email, uniqueness: true

#     validates :age, :numericality => {:greater_than => 5
#     }

  def name
    self.first_name + " " + self.last_name
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year
    # - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    return age
  end
# implement your Student model here
end
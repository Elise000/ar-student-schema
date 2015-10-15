require_relative '../../db/config'

class Student < ActiveRecord::Base

attr_accessor :first_name, :last_name, :birthday
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
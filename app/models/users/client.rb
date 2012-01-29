class Users::Client < User
  def man_full_name
    return "#{self.man_first_name} #{self.man_last_name}"
  end

  def woman_full_name
    return "#{self.woman_first_name} #{self.woman_last_name}"
  end

end
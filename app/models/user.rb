class User < ActiveRecord::Base

  def admin?
    Rails.env.development? || self.is_admin
  end

end

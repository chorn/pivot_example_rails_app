class User < ActiveRecord::Base

  def admin?
    PIVOT_MASTER.a__m__user__admin__pivot_1?(self.is_admin)
    Rails.env.development? || self.is_admin
  end

end

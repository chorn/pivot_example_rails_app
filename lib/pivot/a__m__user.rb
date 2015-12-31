module Pivot
  class Master
    def a__m__user__admin__pivot_1?(is_admin)
      Rails.env.development? || is_admin
    end
  end
end

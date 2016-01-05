module Pivot
  class Master

		# TRUE - Allows or displays admin actions
		# FALSE - Blocks or hides admin actions

    def a__m__user__admin__pivot_1?(is_admin)
      Rails.env.development? || is_admin
    end
  end
end

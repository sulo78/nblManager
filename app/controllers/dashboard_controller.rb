class DashboardController < ApplicationController

# Only for signed users
#  before_filter :require_login

  def admin_dashboard
  end

  def user_dashboard
   @notebooks = Notebook.all
  end
end

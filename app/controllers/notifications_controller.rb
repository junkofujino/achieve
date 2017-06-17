class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notifications = Notification.where(user_id: current_user.id).order(created_at: :desc)
    @notifications_count = Notification.where(user_id: current_user).where(read: false).count
  end
end

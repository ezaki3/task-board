module UpdateNotifier
  extend ActiveSupport::Concern

  private

  def after_create
    super
    notify(:created)
  end

  def after_update
    super
    notify(:updated)
  end

  def notify(action)
    WebsocketRails[:update_notification].trigger model_name, action.to_s.capitalize
  end
end

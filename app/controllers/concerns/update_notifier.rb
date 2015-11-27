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
    resource_for_notification
    WebsocketRails[:update_notification].trigger(
      model_name,
      render_to_string(
        template_for_notification, :formats => [:json], :handlers => [:jbuilder]
      )
    )
  end

  def resource_for_notification
    index
  end

  def template_for_notification
    'index'
  end
end

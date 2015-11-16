module Talkable
  extend ActiveSupport::Concern
  include Inflector

  private

  def after_create
    after_save('Created')
  end

  def after_update
    after_save('Updated')
  end

  def after_save(action)
    user = User.find(session[:user_id])
    item = instance_variable_get(resource)
    text = <<-EOL
[#{action} #{model_name}] *<#{my_url}|#{item.subject}>* by #{user.nickname}
#{item.body}
    EOL
    Slack.chat_postMessage(
      text: text, username: ENV['SLACK_USERNAME'], channel: ENV['SLACK_CHANNEL']
    )
  end

  def my_url
    'http://example.com/'
  end
end

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
    return unless talkable?
    user = User.find(session[:user_id])
    item = instance_variable_get(resource)
    text = "[#{action} #{model_name}] *<#{my_url}|#{item.subject}>* by #{user.nickname}"
    item.previous_changes.each do |k, v|
      text += "\n#{k}: #{v.join(' -> ')}"
    end
    response = Slack.chat_postMessage(
      text: text, username: ENV['SLACK_USERNAME'], channel: ENV['SLACK_CHANNEL']
    )
    logger.info("Slack's response: #{response}")
  end

  def my_url
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def talkable?
    return if Rails.env == 'test'
    ['SLACK_API_TOKEN', 'SLACK_USERNAME', 'SLACK_CHANNEL'].each do |key|
      return false unless ENV[key]
    end
    return true
  end
end

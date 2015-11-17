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
    text = "*[#{action} #{model_name}] <#{my_url}|#{item.subject}> by #{user.nickname}*"
    item.previous_changes.each do |k, v|
      text += "\n#{k}: #{v.join(' -> ')}"
    end
    logger.warn('##############################')
    logger.warn("username: #{ENV['SLACK_USERNAME']}, channel: #{ENV['SLACK_CHANNEL']}")
    logger.warn(
      Slack.chat_postMessage(
        text: text, username: ENV['SLACK_USERNAME'], channel: ENV['SLACK_CHANNEL']
      )
    )
    logger.warn(
      Slack.chat_postMessage(
        text: text, username: ENV['SLACK_USERNAME'], channel: '#dqn-dot-cn'
      )
    )
  end

  def my_url
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def talkable?
    if Rails.env == 'test'
      logger.warn('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
      logger.warn('Rails env eq test')
      return
    end
    ['SLACK_API_TOKEN', 'SLACK_USERNAME', 'SLACK_CHANNEL'].each do |key|
      # return false unless ENV[key]
      unless ENV[key]
        logger.warn('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@')
        logger.warn("${key} is missing in environment variables")
        return false
      end
    end
    return true
  end
end

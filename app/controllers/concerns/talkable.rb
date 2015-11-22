module Talkable
  extend ActiveSupport::Concern
  include Inflector

  included do
    before_action :set_old_members, only: [:update]
  end

  def build_message(item, **kwargs)
    excepts = ['id', 'created_at', 'updated_at', 'type', 'created_by']
    user = User.find(kwargs[:user_id])
    undefined_str = '(undefined)'

    # message title
    action = kwargs[:action].to_s.capitalize
    message = "*[#{action} #{item.class.name}] <#{my_url}|#{item.subject}> by #{user.nickname}*"

    # item's regular attributes
    changes = item.previous_changes
    (changes.keys - excepts).each do |k|
      if k == 'parent_id'
        next if item.parent_id == 0 # It's a Board
        old_parent = changes[k][0] ? Item.find(changes[k][0]).subject : undefined_str
        message += "\n_parent_: #{old_parent} -> #{Item.find(changes[k][1]).subject}"
        next
      end
      changes[k][0] ||= undefined_str
      message += "\n_#{k}:_ #{remove_lf(changes[k][0])} -> #{remove_lf(changes[k][1])}"
    end

    # associated members attributes
    members = kwargs[:members] || []
    addeds = members.reject { |m| m[:release] }
             .map { |m| User.find(m[:user_id]).nickname }
    addeds = addeds - User.where(id: @old_members_user_ids).map(&:nickname) if @old_members_user_ids
    deleteds= members.select { |m| m[:release] }
              .map { |m| User.find(m[:user_id]).nickname }
    if addeds.present? || deleteds.present?
      message += "\n_members_:"
      message += "\n\tadded: #{concat_members(addeds)}" if addeds.present?
      message += "\n\tdeleted: #{concat_members(deleteds)}" if deleteds.present?
    end
    logger.debug("Talk to Slack: " + remove_lf(message))
    message
  end

  private

  def set_old_members
    @old_members_user_ids = instance_variable_get(resource).user_ids
  end

  def after_create
    after_save(:created)
  end

  def after_update
    after_save(:updated)
  end

  def after_save(action)
    return unless talkable?
    text = build_message(
      instance_variable_get(resource),
      user_id: session[:user_id],
      action: action,
      members: params[resource_name][:members_attributes]
    )
    res = Slack.chat_postMessage(
      text: text, username: ENV['SLACK_USERNAME'], channel: ENV['SLACK_CHANNEL']
    )
    logger.info("Slack's response: #{res}")
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

  def remove_lf(val)
    return val unless val
    val.to_s.gsub(/\n/, ' ')
  end

  def concat_members(members)
    return members.join(', ')
  end
end

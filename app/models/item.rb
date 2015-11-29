class Item < ActiveRecord::Base
  has_many :members, dependent: :destroy
  has_many :users, through: :members

  belongs_to :user, foreign_key: :created_by

  accepts_nested_attributes_for :members, allow_destroy: true

  alias_attribute :name, :subject # for RSpec ?
  alias_attribute :user_id, :created_by

  validates :subject, presence: true
  validates :priority, numericality: {only_integer: true}, allow_blank: true

  before_save :adjust_priority
  after_destroy :slide_priority

  scope :prior, -> { order(:priority, updated_at: :desc) }
  scope :peers, ->(parent_id) { where(parent_id: parent_id) }

  private

  def save_member(user_id, is_owner = false)
    member = Member.find_or_initialize_by(item_id: self.id, user_id: user_id)
    member.assign_attributes(is_owner: is_owner) if member.new_record?
    member.save!
  end

  def autosave_associated_records_for_members
    members.each do |m|
      if m.release
        Member.destroy_all(item_id: m.item_id, user_id: m.user_id)
        next
      end
      save_member(m.user_id)
    end
  end

  def adjust_priority
    if self.priority.blank?
      self.priority = (self.class.peers(self.parent_id).maximum(:priority) || 0).next
      return
    end
    return if self.class.peers(self.parent_id).where(priority: self.priority).blank?
    unless changes[:priority]
      from = to = self.priority
    else
      from = changes[:priority].first || (self.class.peers(self.parent_id).maximum(:priority) || 0)
      to = changes[:priority].last
    end
    operation = from < to ? '-' : '+'
    self.class.peers(self.parent_id)
      .where(priority: [from, to].min..[from, to].max)
      .where.not(id: self.id)
      .update_all('priority = priority %s 1' % operation)

    if changes[:parent_id]
      parent_id = changes[:parent_id].first
      priority = changes[:priority] ? changes[:priority].first : self.priority
      slide_priority(parent_id: parent_id, priority: priority)
    end
  end

  def slide_priority(parent_id: self.parent_id, priority: self.priority)
    self.class.peers(parent_id)
      .where('priority >= ?', priority)
      .where.not(id: self.id)
      .update_all('priority = priority - 1')
  end
end

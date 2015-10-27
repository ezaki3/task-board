class Task < ActiveRecord::Base
  include CardBehavior

  belongs_to :group

  alias_attribute :parent_id, :group_id

  private

  def parent_changed
    changes[:group_id]
  end
end

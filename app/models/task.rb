class Task < ActiveRecord::Base
  include CardBehavior

  belongs_to :group

  alias_attribute :parent_id, :group_id
end

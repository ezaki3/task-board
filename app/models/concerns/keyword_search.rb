module KeywordSearch
  extend ActiveSupport::Concern

  included do
    scope :search, ->(keywords) {
      query = all
      if keywords.key?(:order_by) && column_names.include?(keywords[:order_by])
        direction = 'asc'
        if keywords.key?(:direction) && keywords.delete(:direction) == 'desc'
          direction = 'desc'
        end
        query.order!('%s %s' % [keywords.delete(:order_by), direction])
      end
      keywords.each do |k, v|
        query.where!('%s LIKE ?' % k, "%#{v}%") if column_names.include?(k)
      end
      query
    }
  end
end

module KeywordSearch
  extend ActiveSupport::Concern

  included do
    scope :search, ->(keywords) {
      query = all
      keywords.each do |k, v|
        query.where!('%s LIKE ?' % k, "%#{v}%") if column_names.include?(k)
      end
      query
    }
  end
end

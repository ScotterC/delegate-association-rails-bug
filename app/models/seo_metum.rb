class SeoMetum < ActiveRecord::Base
  attr_accessible :browser_title, :meta_author, :meta_description, :meta_keywords,
                  :metumable, :metumable_id, :metumable_type
  belongs_to :metumable, polymorphic: true
end

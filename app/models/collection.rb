class Collection < ActiveRecord::Base
  include SeoMeta
  is_seo_meta
  belongs_to :user

end

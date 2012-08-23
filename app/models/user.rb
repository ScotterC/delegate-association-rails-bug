class User < ActiveRecord::Base
  include SeoMeta
  is_seo_meta
  
  has_many :collections
  accepts_nested_attributes_for :collections

  def collection
    return @collection if @collection
    default_collection = self.collections.first
    default_collection ||= self.collections.create
    @collection = default_collection
  end
  
end

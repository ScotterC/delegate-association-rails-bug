module SeoMeta

  def self.included(base)
    base.extend(ClassMethods)
    base.send :include, InstanceMethods
  end

  module ClassMethods

    def is_seo_meta
      has_one :meta, class_name: SeoMetum, as: :metumable, dependent: :destroy, autosave: true

      delegate :browser_title, :meta_description,  :meta_author, :meta_keywords,
                :browser_title=, :meta_keywords=, :meta_description=, :meta_author=, to: :meta

      after_save :save_meta_tags!
      
      attr_accessible :browser_title, 
                      :meta_keywords, :meta_description, :meta_author

    end

  end

  module InstanceMethods
    class << self
      def included(base)
        base.module_eval do
          
          alias :original_meta_method :meta

        end
      end
    end

          
    def meta
      find_meta || build_meta
    end


    def find_meta
      @meta ||= ::SeoMetum.where(metumable_type: self.class.name, metumable_id: self.id).first
    end

    def build_meta
      @meta ||= ::SeoMetum.new(metumable_type: self.class.name, metumable_id: self.id)
    end  

    def save_meta_tags!
      meta.metumable_id ||= self.id
      meta.save
    end
  end
end


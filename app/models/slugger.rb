module Slugger
    module InstanceMethods
        def slug
            self.name.gsub(' ', '_').downcase
        end
    end

    module ClassMethods
        def find_by_slug(slug)
            self.all.find{|element| element.slug == slug}
        end
    end
end

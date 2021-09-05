class SchoolClass < ActiveRecord::Base
    def to_s
      self.title
    end
  end
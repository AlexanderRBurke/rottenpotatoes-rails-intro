class Movie < ActiveRecord::Base
  class_methods do
    def all_ratings
      return ['G','PG','PG-13','R']
    end
  end
end

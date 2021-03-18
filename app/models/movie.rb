class Movie < ActiveRecord::Base
  def self.all_ratings
    #return ['G','PG','PG-13','R'] # Does the same as below
    %w(G PG PG-13 R)
  end
  def self.filter_and_sort(selected, sort_key)
  # if selected is an array such as ['G', 'PG', 'R'],
  #  retrieve all movies with those ratings
  # don't allow selected to be nil (see below)
    Movie.where(rating:selected).order(sort_key)
  end
end

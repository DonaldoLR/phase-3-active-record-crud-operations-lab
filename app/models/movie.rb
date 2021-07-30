class Movie < ActiveRecord::Base
  
  # CREATE
  def self.create_with_title(title)
    movie = self.create(title: title)
  end

  # READ
  def self.first_movie
    self.all.first
  end
  def self.last_movie
    self.all.last
  end
  def self.movie_count
    self.all.count
  end
  def self.find_movie_with_id(id)
    self.find_by(id: id)
  end
  def self.find_movie_with_attributes(attributes)
    self.find_by(attributes)
  end
  def self.find_movies_after_2002
    self.all.filter {|movie| movie.release_date > 2002}
  end

  # UPDATE
  def update_with_attributes(attributes)
    self.update(attributes)
  end
  def self.update_all_titles(title)
    self.update_all(title: title)
  end

  # DELETE
  def self.delete_by_id(id)
    movie = self.find_by(id: id)
    movie.destroy
  end
  def self.delete_all_movies
    self.destroy_all
  end
end
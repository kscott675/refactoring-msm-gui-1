# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie

    #find id of movie and compare it to the movie id of the character
    movie_id = self.movie_id

    matching_movies = Movie.find(movie_id)
    
    return matching_movies
  end

end

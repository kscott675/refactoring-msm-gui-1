# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    my_director_id = self.director_id

    the_director = Director.find_by(id: my_director_id)

    unless the_director.nil?
      return the_director
    else
      return nil
    end
  end
end

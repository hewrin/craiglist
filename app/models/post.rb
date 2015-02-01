

class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category

  def self.all_category_id(input)
    array =[]
    Post.where(category_id: input).find_each do |post|
    array << post.name
    end
    return array
  end
end

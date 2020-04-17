class Post < ActiveRecord::Base
  belongs_to :user

  validates :character, :quote, presence: true

end
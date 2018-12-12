class Article < ApplicationRecord
#article associations
  belongs_to :user
  has_many :comments
  
end
    
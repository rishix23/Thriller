class Comment < ApplicationRecord
#comment associations
  belongs_to :user
  belongs_to :article
end

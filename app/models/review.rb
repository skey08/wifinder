class Review < ActiveRecord::Base
  belongs_to :workspace
  belongs_to :user
end

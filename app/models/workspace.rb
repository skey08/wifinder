class Workspace < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  def average_rating
    if reviews.blank?
      0
    else
      reviews.average(:star).round(2)
    end
  end
end

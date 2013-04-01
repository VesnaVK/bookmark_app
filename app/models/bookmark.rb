class Bookmark < ActiveRecord::Base
  attr_accessible :name, :url
  
  validates :name, presence: true, length: { maximum: 50 }

  VALID_URL_REGEX = ^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}$

 # VALID_URL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :url, presence: true, format: { with: VALID_URL_REGEX }
end

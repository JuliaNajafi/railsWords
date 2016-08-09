class Playlist < ApplicationRecord
  has_many :words
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end

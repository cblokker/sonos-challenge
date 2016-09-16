class MusicService < ActiveRecord::Base
  has_many :logos
  belongs_to :user
  validates :name, :endpoint, presence: true
end

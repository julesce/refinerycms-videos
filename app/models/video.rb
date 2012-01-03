class Video < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :youtube_url, :body]

  validates :name, :presence => true
  validates :youtube_url, :presence => true

end
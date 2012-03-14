module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'      
    
      acts_as_indexed :fields => [:name, :youtube_url, :body]

      validates_presence_of :name, :youtube_url

    end
  end
end

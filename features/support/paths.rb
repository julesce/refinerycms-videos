module NavigationHelpers
  module Refinery
    module Videos
      def path_to(page_name)
        case page_name
        when /the list of videos/
          admin_videos_path

         when /the new video form/
          new_admin_video_path
        else
          nil
        end
      end
    end
  end
end

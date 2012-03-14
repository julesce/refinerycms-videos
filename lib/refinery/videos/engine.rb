module Refinery
  module Videos
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Videos

      engine_name :refinery_videos

      initializer "register refinerycms_videos plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "videos"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.videos_admin_videos_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/videos/video',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Videos)
      end
    end
  end
end

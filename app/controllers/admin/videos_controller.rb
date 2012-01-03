module Admin
  class VideosController < Admin::BaseController

    crudify :video,
            :title_attribute => 'name', :xhr_paging => true

  end
end

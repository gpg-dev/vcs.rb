#
# Thumbnails from video
#

module VCSRuby
  class Thumbnail
    attr_accessor :width, :height, :aspect
    attr_accessor :time
    attr_accessor :image_path

    def initialize capper, video
      @capper = capper
      @video = video
    end

    def capture 
      @capper.grab @time, @image_path
    end
  end
end

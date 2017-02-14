class StudentsController < ApplicationController
#  include ActionController::Live
  def evaluation
    @micro_video_ids = Array.new(4)
    @micro_video_ids = ["video_0","video_1","video_2","video_3"]
=begin
    response.headers['Content-Type'] = 'text/event-stream'
    5.times {
      response.stream.write "hello world\n"
      sleep 1
    }
    ensure
      response.stream.close
=end
  end

end

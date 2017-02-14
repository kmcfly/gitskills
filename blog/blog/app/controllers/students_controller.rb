class StudentsController < ApplicationController
#  include ActionController::Live
  def evaluation
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

class PostController < ApplicationController
  def show

    save = {}
    save[:message] = @request.params["newmessage"]
    save[:name] = @request.params["name"]
    save[:time] = Time.now
    if @request.session[:messages]
      puts "No-op"
    else
      @request.session[:messages] = []
    end
    @request.session[:messages] << save
    #always redirect after post
    #render "messages/index"
    redirect_to "/messages"
  end



  private

end

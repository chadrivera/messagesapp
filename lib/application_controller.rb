class ApplicationController

  def initialize(request)

    @request = request
    #@request.session["init"] = true


    # unless (@request.session[:messages])
    #   @request.session[:messages] = []
    # end

  end

  def params
    @request.params
  end

  def render(template)
    Tilt.new("./views/#{template}.slim").render(self)
  end

end

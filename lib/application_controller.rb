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
    ['200',{},[Tilt.new("./views/#{template}.slim").render(self)]]
  end

  def redirect_to(path)
    url = "#{@request.scheme}://#{File.join(@request.host_with_port,path)}"
    ['302',{'Location'=>url},[]]
  end
end

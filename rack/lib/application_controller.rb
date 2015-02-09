class ApplicationController

  def initialize(request)
      @request = request
  end

  def params
    @request.params
  end
  def render(template)
    Tilt.new("./views/#{template}.slim").render(self)
  end
end

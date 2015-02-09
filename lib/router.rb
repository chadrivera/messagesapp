
class Router
  def route(request)

    if request.get?
      if request.path == '/'
        controller = MessagesController.new(request)
        controller.show
      else #yes, I know this is a useless else
        controller = MessagesController.new(request)
        controller.show
      end

    elsif request.post?
      controller = PostController.new(request)
      controller.show
    end

  end
end #Router

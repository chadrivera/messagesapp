class Application
  def initialize
    @router = Router.new
  end
  def call(env)

    response = @router.route(Rack::Request.new(env))

    ['200',{},[response]]
  end


end

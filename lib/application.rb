class Application
  def initialize
    @router = Router.new
  end
  def call(env)

    @router.route(Rack::Request.new(env))

    #['200',{},[response]]
  end


end

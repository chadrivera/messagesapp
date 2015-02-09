class BiosController < ApplicationController
  def show
    @name = @request.path.split('/').last.capitalize
    render "bios/show"
  end

  private

end

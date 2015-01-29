class PagesController < ApplicationController

  def index
    @api = Api.new
  end

end

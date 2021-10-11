class BasicsController < ApplicationController

  # GET /basics or /basics.json
  def index
    @basics = Basic.take(30)
  end

end

class BasicsController < ApplicationController

  # GET /basics or /basics.json
  def index
    @basics = Basic.paginate(page: params[:page])
  end

end

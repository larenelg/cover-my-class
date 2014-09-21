class RequestsController < ApplicationController
  def new
  end

  def create
    #render plain: params[:request].inspect # just for testing

    # saving data to the controller
    @request = Request.new(request_params)

    @request.save
    redirect_to @request
  end

  def show
    @request = Request.find(params[:id])
  end

  def index
    @requests = Request.all
  end

  private
    def request_params
      params.require(:request).permit(:course_id, :class_id, :start_time, :end_time, :location, :reason, :notes)
    end
end

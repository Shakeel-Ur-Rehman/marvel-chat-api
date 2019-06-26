class MessagethreadsController < ApplicationController
  before_action :set_messagethread, only: [:show, :update, :destroy]

  # GET /messagethreads
  def index
    @messagethreads = Messagethread.all

    render json: @messagethreads
  end

  # GET /messagethreads/1
  def show
    render json: @messagethread
  end

  # POST /messagethreads
  def create
    @messagethread = Messagethread.new(messagethread_params)

    if @messagethread.save
      render json: @messagethread, status: :created, location: @messagethread
    else
      render json: @messagethread.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messagethreads/1
  def update
    if @messagethread.update(messagethread_params)
      render json: @messagethread
    else
      render json: @messagethread.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messagethreads/1
  def destroy
    @messagethread.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messagethread
      @messagethread = Messagethread.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def messagethread_params
      params.require(:messagethread).permit(:topic, :description, :phone)
    end
end

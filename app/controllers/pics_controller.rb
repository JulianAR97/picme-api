class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :update, :destroy]

  # GET /pics
  def index
    # make sure that the user_id param has a value
    @pics = !!params[:user_id] && !params[:user_id].empty? ? User.find_by(uuid: params[:user_id]).pics : Pic.all

    render json: @pics
  end

  # GET /pics/1
  def show
    render json: @pic
  end

  # POST /pics
  def create
    # Check if user already exists, if not, create one, and then add pic to user's pic collection
    user = User.find_or_create_by(uuid: params[:user_id])
    @pic = Pic.new(pic_params)

    user.pics << @pic

    if @pic.save
      render json: @pic, status: :created, location: @pic
    else
      render json: @pic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pics/1
  def update
    if @pic.update(pic_params)
      render json: @pic
    else
      render json: @pic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pics/1
  def destroy
    @pic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pic_params
      params.require(:pic).permit(:url, :likes, :author, :id, :user_id)
    end
end

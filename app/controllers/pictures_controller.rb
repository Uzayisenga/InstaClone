class PicturesController < ApplicationController
  skip_before_action :login_required, only: [:index]
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def edit
    redirect_to pictures_path unless current_user.id == @picture.user_id
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        PictureMailer.picture_mail(@picture).deliver
        redirect_to pictures_path, notice: "Your Picture was posted!"
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: "Picture was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if current_user.id == @picture.user_id
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: "Picture was successfully destroyed." }
      format.json { head :no_content }
    end
    else
      redirect_to pictures_path
    end
  end

  def confirm
    @picture = current_user.pictures.build(picture_params)
    render :new if @picture.invalid?
  end

  private
  def set_picture
      @picture = Picture.find(params[:id])
  end

  def picture_params
      params.require(:picture).permit(:content, :image, :image_cache)
  end
end

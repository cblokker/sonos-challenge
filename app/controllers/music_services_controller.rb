class MusicServicesController < ApplicationController
  before_action :set_music_service, only: [:show, :edit, :update, :destroy]

  def index
    @music_services = current_user.music_services
  end

  def new
    @music_service = current_user.music_services.build
  end

  def create
    @music_service = current_user.music_services.build(music_service_params)

    if @music_service.save
      redirect_to @music_service, success: 'Music service was successfully created.'
    else
      render :new
    end
  end

  def update
    if @music_service.update(music_service_params)
      redirect_to @music_service, success: 'Music service was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @music_service.destroy
    redirect_to music_services_url, success: 'Music service was successfully destroyed.'
  end

  private

  def set_music_service
    @music_service = current_user.music_services.find(params[:id])
  end

  def music_service_params
    params.require(:music_service).permit(:name, :endpoint)
  end
end

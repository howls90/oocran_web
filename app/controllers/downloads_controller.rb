class DownloadsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  before_action :set_download, except: [:index,:new,:create]

  def index
    @oocran = Download.where(:tipo => "OOCRAN")
    @utran = Download.where(:tipo => "U-TRAN")
    @epc = Download.where(:tipo => "EPC")
    @ims = Download.where(:tipo => "IMS")
    @infra = Download.where(:tipo => "Infrastructure")
    @page = "Downloads"
  end
  def new
    @download = Download.new
    @page = "New Download"
  end
  def create
    @download = Download.new(download_params)
    if @download.save
      redirect_to downloads_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @download.update(download_params)
      redirect_to downloads_path
    else
      render :edit
    end
    @page = "Download Update"
  end
  def destroy
    @download.delete
    redirect_to downloads_path
  end

  private
  def download_params
    params.require(:download).permit(:name,:description,:version,:links,:tipo)
  end

  def set_download
    @download = Download.find(params[:id])
  end

end
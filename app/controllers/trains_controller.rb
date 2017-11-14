class TrainsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  before_action :set_train, except: [:index,:new,:create]

  def index
    @install = Train.where(:tipo => "Installation")
    @orchestrator = Train.where(:tipo => "Orchestrator")
    @cluster = Train.where(:tipo => "Cluster")
    @utran = Train.where(:tipo => "U-TRAN")
    @ims = Train.where(:tipo => "IMS")
    @epc = Train.where(:tipo => "EPC")
    @infras = Train.where(:tipo => "Infrastructure")

    @page = "Training"
  end
  def new
    @train = Train.new
    @page = "New Train"
  end
  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to "/trains"
    else
      render :new
    end
  end
  def update
    if @train.update(train_params)
      redirect_to train_path
    else
      render :edit
    end
    @page = "Update Train"
  end
  def destroy
    @train.delete
    redirect_to trains_path
  end
  def edit
  end

  private
  def train_params
    params.require(:train).permit(:name,:description,:wiki,:video,:tipo)
  end

  def set_train
    @train = Train.find(params[:id])
  end
end
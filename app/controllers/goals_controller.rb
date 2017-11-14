class GoalsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  before_action :set_goal, except: [:index,:new,:create]

  def index
    @orchestrator = Goal.where(:tipo => "Orchestrator")
    @cluster = Goal.where(:tipo => "Cluster")
    @utran = Goal.where(:tipo => "U-TRAN")
    @ims = Goal.where(:tipo => "IMS")
    @epc = Goal.where(:tipo => "EPC")

    @page = "Project"
  end
  def new
    @goal = Goal.new
    @page = "New Goal"
  end
  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @goal.update(goal_params)
      redirect_to goals_path
    else
      render :edit
    end
    @page = "Goal Update"
  end
  def destroy
    @goal.delete
    redirect_to goals_path
  end

  private
  def goal_params
    params.require(:goal).permit(:name,:assigned_to,:status,:task_begin,:tipo)
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end
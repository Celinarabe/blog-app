class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @entry = Entry.find(params[:entry_id])
    if @entry.tasks.create(task_params)
      redirect_to entry_path(@entry)
    else
      render :new
    end
  end

  private
  
  def task_params
    params.require(:task).permit(:body, :tags)
  end

end

class TasksController < ApplicationController
  def index
    @tasks = Task.default_order
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "#{@task}を登録しました!"
    else
      render :new
    end
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:name, :contents)
  end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end
  
  def new
    render('tasks/new.html.erb')
  end
  
  def create
    @task = Task.create(params[:task])
    render('tasks/success.html.erb')
  end
  
  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end
end
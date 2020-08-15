class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task_params = current_user.tasks.build  # form_with 用
      @tasks = current_user.tasks.order(id: :desc).page(params[:page])
    end
  end
end

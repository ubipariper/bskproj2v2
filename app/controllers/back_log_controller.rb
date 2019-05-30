class BackLogController < ApplicationController
  def show
    @sprint = 1
  end

  def update_progress
    id = Integer(JSON.parse(params[:id])) - 1
    task_id = Integer(JSON.parse(params[:task_id]))
    Task.update(task_id, state: id)
    nil
  end
end

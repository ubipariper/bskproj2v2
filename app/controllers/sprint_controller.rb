class SprintController < ApplicationController
  def show
    @sprint = params[:id] ? params['id'] : 2
  end

  def show_backlog
    @sprint = 1
  end

  def show_first_role
    Role.first.name
  end
  helper_method :show_first_role

  def update_tasks_view
    @sprint = params[:sprint]
    render '/shared/task_page', layout: false
  end

  def update_progress
    id = Integer(JSON.parse(params[:state])) - 1
    task_id = Integer(JSON.parse(params[:task_id]))
    @sprint = Integer(JSON.parse(params[:sprint]))
    Task.update(task_id, state: id)
    nil
  end

  def set_owner
    Task.update(params[:task_id], user_id: params[:owner])
    redirect_to action: 'show', id: params[:sprint_id]
  end

  def set_task_sprint
    Task.update(params[:task_id], user_id: params[:sprint])
    redirect_to action: 'show', id: params[:sprint_id]
  end
end

module SprintHelper
  def find_current_sprint
    Sprint.where('date_start < ?', DateTime.now)
          .where('date_end > ?', DateTime.now).ids
  end

  def show_sprints
    Sprint.all
  end

  def show_users
    User.all
  end

  # @param [Integer] sprint
  def show_sprint_tasks(sprint)
    if sprint == 0
      Task.where(sprint: find_backlog)
    else
      Task.where(sprint: sprint)
    end
  end

  # @param [Integer] sprint
  def show_sprint_name(sprint)
    Sprint.find(sprint.to_i).name
  end
end

module BackLogHelper
  def find_backlog
    Sprint.find_by(name: 'Backlog').id
  end
end

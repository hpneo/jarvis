class Task < ActiveRecord::Base
  attr_accessible :avenger_id, :content, :status

  STATUSES = {
    :unscheduled => 'No asignada',
    :unstarted => 'No iniciada',
    :started => 'Iniciada',
    :finished => 'Finalizada'
  }

  scope :unscheduled, where(:status => 'unscheduled')
  scope :unstarted, where(:status => 'unstarted')
  scope :started, where(:status => 'started')
  scope :finished, where(:status => 'finished')
end

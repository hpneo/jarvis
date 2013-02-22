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

  before_create :set_status

  def set_status
    self.status = 'unstarted' if self.avenger_id and self.status == 'unscheduled'
  end

  def as_json(options = {})
    options ||= {}

    options[:only] ||= [:id, :avenger_id, :content, :status]

    super(options)
  end
end

ActiveAdmin.register Task do

  form do |f|
    f.inputs '' do
      f.input :content
      f.input :status, :collection => Task::STATUSES.invert
      f.input :avenger_id, :as => :select, :collection => Avenger.all
    end

    f.actions
  end

end

ActiveAdmin.register Booking do
  permit_params :user_id, :owner_id, :vanue_id, :start_date, :end_date, :prize

  index do
    selectable_column
    id_column
    column :user_id
    column :owner_id
    column :vanue_id
    column :start_date
    column :end_date
    column :prize
    actions
  end

  filter :user_id
  filter :owner_id
  filter :vanue_id
  filter :start_date
  filter :end_date
  filter :prize

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :user_id
      f.input :owner_id
      f.input :vanue_id
      f.input :start_date
      f.input :end_date
      f.input :prize
    end
    f.actions
  end
end

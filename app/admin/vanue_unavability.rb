ActiveAdmin.register VanueUnavability do
  permit_params :vanue_id, :start_date, :end_date, :reagon

  index do
    selectable_column
    id_column
    column :vanue_id
    column :start_date
    column :end_date
    column :reagon
    actions
  end

  filter :vanue_id
  filter :start_date
  filter :end_date
  filter :reagon

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :vanue_id
      f.input :start_date
      f.input :end_date
      f.input :reagon
    end
    f.actions
  end
end

ActiveAdmin.register Amenity do
  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
    end
    f.actions
  end
end

ActiveAdmin.register Vanue do
  permit_params :name, :address, :state, :city, :area, :latitude, :longitude, :guest_capacity, :prize, :description

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :state
    column :city
    column :area
    column :latitude
    column :longitude
    column :guest_capacity
    column :prize
    actions
  end

  filter :name
  filter :address
  filter :state
  filter :city
  filter :area
  filter :latitude
  filter :longitude
  filter :guest_capacity
  filter :prize

  form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :state
      f.input :city
      f.input :area
      f.input :latitude
      f.input :longitude
      f.input :guest_capacity
      f.input :prize
    end
    f.actions
  end
end

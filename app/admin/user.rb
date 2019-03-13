# ActiveAdmin.register User do
#   permit_params :name, :email, :address, :contact_no
#
#   index do
#     selectable_column
#     id_column
#     column :name
#     column :email
#     column :address
#     column :contact_no
#     actions
#   end
#
#   filter :name
#   filter :email
#   filter :address
#   filter :contact_no
#
#   form do |f|
#     f.semantic_errors *f.object.errors.keys
#     f.inputs do
#       f.input :name
#       f.input :email
#       f.input :address
#       f.input :contact_no
#     end
#     f.actions
#   end
# end

ActiveAdmin.register Brand do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :logo
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs "Brand" do
      f.input :name
      f.input :description, as: :quill_editor
      f.input :logo
    end
    f.submit
  end

  index do
    column :name
    column :description do |brand|
      brand.description[0...100]
    end
    column :logo
    actions
  end

end

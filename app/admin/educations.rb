ActiveAdmin.register Education do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :category_id, :title, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #

  form do |f|
    f.inputs do
      f.input :category
      f.input :title
      f.input :description, as: :quill_editor
    end
  end
  
end

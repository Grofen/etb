ActiveAdmin.register Tyre do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :width, :ratio, :rim, :brand_id, :year, :made_in, :description, :model, :load, :speed, :season, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #
  index do
    column :name
    column :width
    column :ratio
    column :rim
    column :model
    column :load
    column :speed
    column :brand
    column :price
    column :season
    column :made_in
    column :year
    column :description do |tyre|
      tyre.description[0...100]
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Tyre" do
      f.input :name
      f.input :width
      f.input :ratio
      f.input :rim
      f.input :model
      f.input :load
      f.input :speed
      f.input :season
      f.input :brand
      f.input :price
      f.input :made_in
      f.input :year
      f.input :description, as: :quill_editor
    end
    f.submit
  end
end

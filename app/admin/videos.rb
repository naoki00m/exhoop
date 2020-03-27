ActiveAdmin.register Video do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :work, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :work, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    selectable_column
    id_column
    column :name
    column :work
    column 'User' do |video|
      video.user
    end
    column 'Likes' do |video|
      video.likes.count
    end
    actions
  end
end

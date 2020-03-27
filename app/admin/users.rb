ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :image, :profile
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :image, :profile]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :image
    column :profile
    column 'Videos' do |user|
      user.videos.count
    end
    actions
  end

  show do |user|
    attributes_table(*user.class.columns.collect { |column| column.name.to_sym })
    panel "Videos" do
      table_for user.videos do
        column :name
        column :work
      end
    end
    active_admin_comments
  end
end

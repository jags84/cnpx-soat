ActiveAdmin.register User do
  actions :all, :except => [:destroy, :new, :create, :edit]
  index do
    column :id
    column :name
    column :email
    column :phone
    column :document_id
    column :policies_count
    actions
  end

  show do
    attributes_table_for user do
      row :id
      row :name
      row :email
      row :phone
      row :document_type
      row :document_id
      row :policies_count
    end
  end

end

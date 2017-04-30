ActiveAdmin.register Policy do
  actions :all, :except => [:destroy, :new, :create,:edit]
  
  index do
    id_column
    column :vehicle_type
    column :user
    column :expiration_date
    column :plate
    column :total do |p|
      number_to_currency(p.total, precision: 2)
    end
    column :policy_status
    actions
  end

  show do
    panel "Policy" do
      attributes_table_for policy do
        row :id
        row :vehicle_type
        row :vehicle_sub_type do |p|
          p.vehicle_sub_type.sub_type_description
        end
        row :user
        row :age
        row :number_of_passengers
        row :engine_cylinder
        row :tons
        row :plate
        row :issue_date
        row :expiration_date
        row :commercial_rate
        row :premium
        row :fosyga
        row :runt
        row :total
        row :policy_status
      end
    end

    panel "Payment" do
      attributes_table_for policy do
        if policy.payment
          row :id do
            policy.payment.id
          end
          row :number_of_quotes do
            policy.payment.number_of_quotes
          end
          row :credit_card do
            "**** **** **** #{policy.payment.credit_card_terminal}"
          end
          row :transaction_date do
            policy.payment.created_at
          end
        else
          "This policy has not been payed"
        end
      end
    end

  end

end

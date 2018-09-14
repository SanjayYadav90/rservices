class DeviseInvitableAddToUsers < ActiveRecord::Migration[5.2]
  def up
    change_table :users do |t|
      add_column :users, :invitation_token, :string
      add_column :users, :invitation_created_at, :datetime
      add_column :users, :invitation_sent_at, :datetime
      add_column :users, :invitation_accepted_at, :datetime
      add_column :users, :invitation_limit, :integer
      add_column :users, :invited_by_id, :integer
      add_column :users, :invited_by_type, :string
      add_index :users, :invitation_token, :unique => true
      change_column_null :users, :encrypted_password, :string, true
    end
  end

  end

class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
  

    User.create! do |u|
            u.email     = 'vanmartc@gmail.com'
            u.password    = 'adminv4n'
            u.role = 'administrator'
    end

    User.create! do |u|
            u.email     = 'andreselduende@gmail.com'
            u.password    = 'admindu3nd3'
            u.role = 'administrator'
    end
  end
end

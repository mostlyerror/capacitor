class InsertTestUser < ActiveRecord::Migration[6.0]
  def change
    create_table :test_users do |t|
      User.create!(
        email: 'ben@ben.com',
        password: 'benben',
        password_confirmation: 'benben'
      )
    end
  end
end

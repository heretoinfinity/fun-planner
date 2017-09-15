class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, { null: false, limit: 10, unique: true, index: { unique: true } }
      t.string :email, { index: { unique: true }, null: false, limit: 20 }
      t.string :password_digest, { null: false, length: { minimum: 7, maximum: 50 } }
      t.integer :budget_amount, { greater_than_or_equal_to: 0, allow_blank: true }
      t.integer :pay_period, { greater_than_or_equal_to: 0, allow_blank: true }

      t.timestamps
    end
  end
end

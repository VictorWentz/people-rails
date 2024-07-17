class CreateUserDepartaments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_departaments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :departament, null: false, foreign_key: true

      t.timestamps
    end
  end
end

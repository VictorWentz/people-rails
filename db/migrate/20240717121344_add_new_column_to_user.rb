class AddNewColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :job_grade, :integer
  end
end

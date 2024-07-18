class AddColumnToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :nota_2, :integer
    add_column :feedbacks, :nota_3, :integer
    add_column :feedbacks, :nota_4, :integer
    add_column :feedbacks, :nota_5, :integer
    add_column :feedbacks, :nota_6, :integer
    add_column :feedbacks, :nota_7, :integer
    add_column :feedbacks, :nota_8, :integer
    add_column :feedbacks, :comments, :text
    add_column :feedbacks, :user_id, :integer
    add_column :feedbacks, :manager_id, :integer
  end
end

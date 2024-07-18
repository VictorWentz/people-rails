class ChangeColumnNameFromFeedback < ActiveRecord::Migration[7.0]
  def change
    rename_column :feedbacks, :nota_p1, :nota_1
  end
end

class ChangeDatatypeDescriptionOfFoods < ActiveRecord::Migration[5.2]
  def change
    change_column :foods, :description, :string, default: "食事の内容を記述"
  end
end

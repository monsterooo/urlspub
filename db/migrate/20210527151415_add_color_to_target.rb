class AddColorToTarget < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :color, :string
  end
end

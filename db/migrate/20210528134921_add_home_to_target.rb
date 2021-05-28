class AddHomeToTarget < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :home, :string
  end
end

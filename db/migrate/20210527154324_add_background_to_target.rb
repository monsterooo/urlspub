class AddBackgroundToTarget < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :background, :string
  end
end

class AddLastHashToTarget < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :last_hash, :string
  end
end

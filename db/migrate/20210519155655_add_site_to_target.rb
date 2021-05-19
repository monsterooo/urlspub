class AddSiteToTarget < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :site, :string
    add_index :targets, :url, unique: true
  end
end

class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :name
      t.string :icon
      t.string :url

      t.timestamps
    end
  end
end

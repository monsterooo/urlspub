class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end

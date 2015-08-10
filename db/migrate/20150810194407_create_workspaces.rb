class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :company_url
      t.string :image_url
      t.string :hours
      t.string :wifi
      t.references :user

      t.timestamps null: false
    end
  end
end

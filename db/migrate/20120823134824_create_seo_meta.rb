class CreateSeoMeta < ActiveRecord::Migration
  def change
    create_table :seo_meta do |t|
      t.references :metumable, :polymorphic => true
      t.string :browser_title
      t.string :meta_keywords
      t.text :meta_description
      t.string :meta_author

      t.timestamps
    end
  end
end

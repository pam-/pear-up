class CreateUsersLanguages < ActiveRecord::Migration
  def change
    create_table :users_languages do |t|
    	t.references :user
    	t.references :language
    	t.string :level

      t.timestamps
    end
    add_index :users_languages, :user_id
    add_index :users_languages, :language_id
    add_index :users_languages, [:user_id, :language_id]
  end
end

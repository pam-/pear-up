class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
    	t.integer :user_id, null: false
    	t.integer :partner_id, null: false
    	t.string :message
    	t.string :status, null: false, default: "" #pending requested or confirmed => helps see who sent request and who ahs to confirm it  

    	t.timestamps
    end

    add_index :pairings, :user_id
    add_index :pairings, :partner_id
    add_index :pairings, [:user_id, :partner_id]
  end
end

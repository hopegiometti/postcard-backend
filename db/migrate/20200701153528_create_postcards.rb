class CreatePostcards < ActiveRecord::Migration[6.0]
  def change
    create_table :postcards do |t|
      t.string :message
      t.string :photo
      t.user :references

      t.timestamps
    end
  end
end

class CreatePostcards < ActiveRecord::Migration[6.0]
  def change
    create_table :postcards do |t|
      t.string :message
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

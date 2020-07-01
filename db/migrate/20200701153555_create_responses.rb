class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :body
      t.references :postcard, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

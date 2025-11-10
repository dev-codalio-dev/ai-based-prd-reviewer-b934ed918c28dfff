class CreatePrds < ActiveRecord::Migration[7.2]
  def change
    create_table :prds do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.datetime :upload_timestamp, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.string :overall_grade, null: false
      t.text :analysis_summary, null: false
      t.datetime :review_timestamp, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :prd, null: false, foreign_key: true

      t.timestamps
    end
  end
end

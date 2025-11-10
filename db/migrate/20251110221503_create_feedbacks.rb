class CreateFeedbacks < ActiveRecord::Migration[7.2]
  def change
    create_table :feedbacks do |t|
      t.string :category, null: false
      t.text :specific_feedback, null: false
      t.text :suggested_improvement
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end

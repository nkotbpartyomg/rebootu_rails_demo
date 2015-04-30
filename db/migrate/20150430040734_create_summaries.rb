class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.text :raw_text
      t.text :summarized_text

      t.timestamps null: false
    end
  end
end

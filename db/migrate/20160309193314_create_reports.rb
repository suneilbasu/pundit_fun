class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :user_id
      t.string :story
      t.string :publish_flag, :default: 1

      t.timestamps null: false
    end
  end
end

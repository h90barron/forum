class CreateForumThreads < ActiveRecord::Migration
  def change
    create_table :forum_threads do |t|
      t.string :subject
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

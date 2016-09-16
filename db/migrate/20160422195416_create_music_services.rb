class CreateMusicServices < ActiveRecord::Migration
  def change
    create_table :music_services do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.string :name, null: false
      t.string :endpoint, null: false

      t.timestamps null: false
    end
  end
end

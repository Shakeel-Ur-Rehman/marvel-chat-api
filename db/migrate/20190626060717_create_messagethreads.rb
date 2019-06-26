class CreateMessagethreads < ActiveRecord::Migration[5.2]
  def change
    create_table :messagethreads do |t|
      t.string :topic
      t.text :description
      t.string :phone

      t.timestamps
    end
  end
end

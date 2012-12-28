class CreateTales < ActiveRecord::Migration
  def change
    create_table :tales do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

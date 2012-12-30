class AddPublishedToTales < ActiveRecord::Migration
  def change
    add_column :tales, :published, :boolean
  end
end

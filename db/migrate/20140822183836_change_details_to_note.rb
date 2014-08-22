class ChangeDetailsToNote < ActiveRecord::Migration
  def change
    remove_column :tasks, :details
    add_column :tasks, :note, :string
  end
end

class AddCommenterUsernameColumnToCommentsTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :commentBy, :string
  end
end

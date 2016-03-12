class RemoveUserFromReports < ActiveRecord::Migration
  def change
    remove_column :reports, :user_id, :string
  end
end

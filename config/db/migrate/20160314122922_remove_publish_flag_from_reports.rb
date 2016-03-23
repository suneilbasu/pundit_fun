class RemovePublishFlagFromReports < ActiveRecord::Migration
  def change
    remove_column :reports, :publish_flag, :string
  end
end

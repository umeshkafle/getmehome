class AddRequestIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :request_id, :integer
  end
end

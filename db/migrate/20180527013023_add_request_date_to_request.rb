class AddRequestDateToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :request_date, :date
  end
end

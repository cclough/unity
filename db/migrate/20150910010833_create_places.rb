class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer  "geo_id"
      t.string  "name"
      t.float  "lat"
      t.float  "lng"
      t.string  "continent"
      t.integer  "status"
      t.timestamps
    end
  end
end

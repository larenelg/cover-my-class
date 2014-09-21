class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :course_id
      t.string :class_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.text :reason
      t.text :notes

      t.timestamps
    end
  end
end

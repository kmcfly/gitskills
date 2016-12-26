class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :admission_ticket
      t.string :name
      t.string :phone
      t.string :email
      t.integer :channel_id
      t.string :create_by
      t.string :remark
      t.boolean :state
      t.integer :course_id

      t.timestamps
    end
  end
end

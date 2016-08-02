class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :slack
      t.integer :age
    end
  end
end

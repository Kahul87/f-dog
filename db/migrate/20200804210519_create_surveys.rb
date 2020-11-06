class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :size
      t.binary :appartment
      t.string :shed
      t.string :energy
      t.binary :garden
      t.binary :children
      t.binary :wh

      t.timestamps
    end
  end
end

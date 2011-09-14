class CreateMoshikomis < ActiveRecord::Migration
  def self.up
    create_table :moshikomis do |t|
      t.string :title
      t.string :comment
      t.string :hyouka_kubun
      t.date :koshinyotei_date

      t.timestamps
    end
  end

  def self.down
    drop_table :moshikomis
  end
end

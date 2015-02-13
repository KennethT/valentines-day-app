class CreateWhysingle < ActiveRecord::Migration
  def change
    create_table :whysingles do |t|
      t.string :reason
    end
  end
end

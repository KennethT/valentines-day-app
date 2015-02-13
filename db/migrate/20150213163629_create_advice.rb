class CreateAdvice < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :advice
    end
  end
end

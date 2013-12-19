class Type < ActiveRecord::Migration
  def up
    create_table :type_of_arts do |t|
      t.string :name, null: false

    end
  end
end

end

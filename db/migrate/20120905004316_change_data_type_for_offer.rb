class ChangeDataTypeForOffer < ActiveRecord::Migration
  def up
  	change_table :offers do |t|
      t.change :terms, :text
      t.change :details, :text      
    end
  end

  def down
  	change_table :offer do |t|
      t.change :terms, :string
      t.change :details, :string      
    end  	
  end
end

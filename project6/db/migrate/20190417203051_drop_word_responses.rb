class DropWordResponses < ActiveRecord::Migration[5.2]
  def down
	drop_table :word_responses
  end
end

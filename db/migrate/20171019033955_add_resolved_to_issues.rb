class AddResolvedToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :resolved, :boolean
  end
end

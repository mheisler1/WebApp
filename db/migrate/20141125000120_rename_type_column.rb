class RenameTypeColumn < ActiveRecord::Migration
  def change
      rename_column :job_types, :type, :job_type
  end
end

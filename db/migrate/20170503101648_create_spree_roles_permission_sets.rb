class CreateSpreeRolesPermissionSets < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_roles_permission_sets do |t|
      t.references :role, index: true
      t.references :permission_set, index: true
    end
  end
end

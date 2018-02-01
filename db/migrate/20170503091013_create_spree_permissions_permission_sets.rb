class CreateSpreePermissionsPermissionSets < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_permissions_permission_sets do |t|
      t.references :permission, index: true
      t.references :permission_set, index: true
    end
  end
end

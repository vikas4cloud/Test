module "snapshot" {
  source = "./14Aug"
  subscription_id="59566ed9-5683-4f3e-9064-c7edbfc550ed"
  client_id="61164566-16a2-489a-b2b1-76922794419c"
  client_secret="9cI.H1+PEKQ2c.GQ*6hDkFk54qK/P+DT"
  tenant_id="513294a0-3e20-41b2-a970-6d30bf1546fa"
  resource_group_name="kp_gp"
  location="eastus"

  snapshot_name="snapshot_kumar"
  create_option="Copy"
  source_uri="subscriptions/59566ed9-5683-4f3e-9064-c7edbfc550ed/resourceGroups/KP_GP/providers/Microsoft.Compute/disks/vm02_disk1_97f778d2dae942f18e68713444645128"
}

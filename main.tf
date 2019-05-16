resource "google_kms_key_ring" "default" {
  name     = "vault"
  location = "${var.region}"
}

data "google_kms_crypto_key" "default" {
  name     = "vault-key"
  key_ring = "${data.google_kms_key_ring.default.self_link}"
}

module "vault" {
  source         = "terraform-google-modules/vault/google"
  project_id     = "${var.project_id}"
  region         = "${var.region}"
  kms_keyring    = "${google_kms_key_ring.default.name}"
  kms_crypto_key = "${data.google_kms_crypto_key.name}"

  storage_bucket_force_destroy = true
}

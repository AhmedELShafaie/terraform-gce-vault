resource "google_kms_key_ring" "default" {
  name     = "vault-key-ring"
  project  = "${var.project_id}"
  location = "${var.region}"
}

resource "google_kms_crypto_key" "default" {
  name     = "vault-crypto-key"
  key_ring = "${google_kms_key_ring.default.self_link}"
}

module "vault" {
  source         = "terraform-google-modules/vault/google"
  project_id     = "${var.project_id}"
  region         = "${var.region}"
  kms_keyring    = "${google_kms_key_ring.default.name}"
  kms_crypto_key = "${google_kms_crypto_key.default.name}"

  storage_bucket_force_destroy = true
}

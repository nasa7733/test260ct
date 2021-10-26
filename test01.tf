provider "google" {
  project = "miprodlabs"
  region ="asia-east1"
}
resource  "google_compute_instance" "test" {
  name = "mytestvm"
}


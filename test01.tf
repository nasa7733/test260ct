provider "google" {
  project = "midevops"
  region ="asia-east1"
  zone = "asia-east1-a"
}
resource  "google_compute_instance" "test" {
  name = "mytestvm"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
   network = "default"

 }

}


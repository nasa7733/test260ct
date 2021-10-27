provider "google" {
  project = "midevops"
  region ="asia-east1"
  zone = "asia-east1-a"
  credentials = file("creds.json")
}
resource  "google_compute_instance" "test" {
  name = "mytestvm"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20210916"
    }
  }
  network_interface {
   network = "default"

 }

}

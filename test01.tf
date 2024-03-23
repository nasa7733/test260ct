provider "google" {
  project = "vamsi-cloud"
  region ="asia-east1"
  zone = "asia-east1-a"
//  credentials = file("./creds/creds.json")
}
resource  "google_compute_instance" "test" {
  name = "nasa-jenkins-test"
  machine_type = "n2-standard-2"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20210916"
    }
  }
  network_interface {
   network = "vamsi-cloud-vpc"
   subnetwork = "vamsi-cloud-subnet"

 }

}

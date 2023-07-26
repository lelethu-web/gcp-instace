provider "google" {
  version = "3.5.0"

  credentials = file("focal-legacy-393510-1d18544296c0.json")

  project = "My First Project"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "appserver" {
  name = "secondary-application-server"
  machine_type = "f1-micro"

  boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
}
 network_interface {
   network = "default"
}
}
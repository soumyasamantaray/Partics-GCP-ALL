resource "google_compute_instance" "webserver" {
    name = "webserver"
    description = "this is 1st server"
    machine_type = "e2-medium"
    network_interface {
      network = "default"
    }
    tags = "webserver"
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
        labels = {
            my_label = "Debian"
        }
      }
    }
  
}
resource "random_pet" "nested_00" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "nested_00_pet" {
  value = resource.random_pet.nested_00.id
}
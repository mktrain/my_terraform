resource "aws_db_instance" "database" {
    allocated_storage           = 20
    db_name                     = "testdb"
    engine                      = "mysql"
    engine_version              = "8.0.28"
    instance_class              = "db.t2.micro"
    username                    = "admin"
    password                    = "${file("../db_pass.txt")}"
    skip_final_snapshot         = true
    identifier                  = "myfirstrdsfromtf"

}
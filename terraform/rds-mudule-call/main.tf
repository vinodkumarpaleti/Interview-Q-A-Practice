module "rds_module" {
    source = "./Modules/RDS-module"
    identifier = "demodb"
    engine = "mysql"
    instance_class = "db.t3a.large"
    allocated_storage = 5
    db_name = "demodb"
    username = "user"
}
connection: "hms_postgresql_conn"

include: "/views/*.view.lkml"



datagroup: the_looker_hms_ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: the_looker_hms_ecommerce_default_datagroup

explore: departments {}


explore: employees {
  join: departments {
    type: left_outer
    sql_on: ${employees.department_id} = ${departments.department_id} ;;
    relationship: many_to_one
  }
}

view: employees {

  sql_table_name: employees ;;
  drill_fields: [employee_id]

  dimension: employee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.employee_id ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.employee_name ;;

  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.department_id ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_id]
  }
}

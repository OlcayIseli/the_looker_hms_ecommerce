view: departments {

  sql_table_name: departments ;;
  drill_fields: [department_id]

  dimension: department_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.department_id ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}.department_name ;;
  }
}

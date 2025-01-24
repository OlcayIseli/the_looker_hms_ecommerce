# The name of this view in Looker is "Q1 Table"
view: q1_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `thelook_ecommerce_olcay.q1_table` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: measure {
    type: number
    sql: ${TABLE}.Measure ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }
  measure: count {
    type: count
  }
}

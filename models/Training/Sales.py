import snowflake.snowpark.functions as F
def model (dbt,session):
  

  df_sql = session.sql("select * from prod.product")
  

  return df_sql
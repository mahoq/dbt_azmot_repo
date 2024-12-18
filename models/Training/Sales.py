import snowflake.snowpark.functions as F
def model (dbt,session):
  df = session.sql("select * from prod.product")
  df_filter= df.filter(F.col("REGION")=='West')
  df_final = df_filter.group_by("STATE").agg(F.sum(F.col('GLOBAL_SALES').alias('Total Global Sales')))

  return df_final

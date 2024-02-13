{% snapshot employee_check %}

{{
    config(
      target_database='dbt_web',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='check',
      check_cols=['employee_name','State'],
    )
}}

select * from dbt_src.STG_EMP02



{% endsnapshot %}
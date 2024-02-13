{% snapshot employee_snapshot %}

{{
    config(
      target_database='dbt_web',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from dbt_src.STG_EMP01



{% endsnapshot %}
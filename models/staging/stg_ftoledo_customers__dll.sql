{{ config(
    materialized='table',
    primary_key='customer_id__c',
    category='Profile'
) }}

   select

        id__c as customer_id__c,
        first_name__c,
        last_name__c,
        email__c as customer_email__c

    from {{ source('default', 'raw_customers__dll') }}

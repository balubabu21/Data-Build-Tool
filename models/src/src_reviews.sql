with raw_reviews as (
    {# select * from AIRBNB.RAW.RAW_REVIEWS #}
    select * from {{source('airbnb','reviews')}}
)
select 
    LISTING_ID, 
    DATE as REVIEW_DATE, 
    REVIEWER_NAME, 
    COMMENTS AS REVIEW_TEXT, 
    SENTIMENT AS REVIEW_SENTIMENT 
FROM raw_reviews
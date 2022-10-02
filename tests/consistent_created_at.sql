with src_listings as (
    select * from {{ref('dim_listings_cleansed')}}
),
r as(
    select * from {{ref('fct_reviews')}}
) 
select * from r
inner join src_listings s on
    r.listing_id = s.listing_id
and r.REVIEW_DATE <= s.created_at

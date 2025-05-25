select *
from {{ ref('fct_reviews') }} r
JOIN {{ ref('dim_listings_cleansed') }} l ON r.listing_id = l.listing_id
where r.review_date < l.created_at
LIMIT 10
-- This test checks that the created_at date in the dim_listings_cleansed table is always before the review_date in the fct_reviews table.
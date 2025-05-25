with mart_fullmoon_reviews as(
  select * from {{ ref('mart_fullmoon_reviews') }}
)
select is_full_moon, review_sentiment, count(*) as reviews
from mart_fullmoon_reviews
group by is_full_moon, review_sentiment
order by is_full_moon, review_sentiment
-- This analysis shows the number of reviews on full moon days and non-full moon days
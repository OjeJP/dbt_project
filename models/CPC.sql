with Facebook as (

    select
       sum(spend)/sum(clicks) As Facebook
  	FROM raw-data-390720.mcdm_paid_ads_basic_performance_structure.main_seeds_src_ads_creative_facebook_all_data
),

Tiktok as (

    SELECT 
  		sum(spend)/sum(clicks) As Tiktok
  	FROM raw-data-390720.mcdm_paid_ads_basic_performance_structure.main_seeds_src_ads_tiktok_ads_all_data
   

),

Twitter as (

    select
    	sum(spend)/sum(clicks) As Twitter
  	FROM raw-data-390720.mcdm_paid_ads_basic_performance_structure.main_seeds_src_promoted_tweets_twitter_all_data

),

Bing As (
SELECT 
	sum(spend)/sum(clicks) As Bing
FROM raw-data-390720.mcdm_paid_ads_basic_performance_structure.src_ads_bing_all_data

),

final as (

    select
  		*
    from Facebook, Tiktok, Twitter, Bing

)

select * from final
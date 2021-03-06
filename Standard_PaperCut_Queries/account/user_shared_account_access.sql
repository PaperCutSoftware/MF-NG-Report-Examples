SELECT   user0_.user_id                 AS user1_20_, 
         user0_.user_name               AS user2_20_, 
         user0_.external_user_name      AS external3_20_, 
         user0_.full_name               AS full4_20_, 
         user0_.email                   AS email20_, 
         user0_.notes                   AS notes20_, 
         user0_.total_jobs              AS total7_20_, 
         user0_.total_pages             AS total8_20_, 
         user0_.total_sheets            AS total9_20_, 
         user0_.reset_by                AS reset10_20_, 
         user0_.reset_date              AS reset11_20_, 
         user0_.deleted                 AS deleted20_, 
         user0_.deleted_date            AS deleted13_20_, 
         user0_.created_date            AS created14_20_, 
         user0_.created_by              AS created15_20_, 
         user0_.modified_date           AS modified16_20_, 
         user0_.modified_by             AS modified17_20_, 
         user0_.department              AS department20_, 
         user0_.office                  AS office20_, 
         user0_.card_number             AS card20_20_, 
         user0_.disabled_printing       AS disabled21_20_, 
         user0_.disabled_printing_until AS disabled22_20_, 
         user0_.net_reset_by            AS net23_20_, 
         user0_.net_reset_date          AS net24_20_, 
         user0_.net_total_megabytes     AS net25_20_, 
         user0_.net_total_time_hours    AS net26_20_, 
         user0_.disabled_net            AS disabled27_20_, 
         user0_.disabled_net_until      AS disabled28_20_, 
         user0_.internal                AS internal20_, 
         user0_.last_user_activity      AS last30_20_, 
         user0_.card_number2            AS card31_20_, 
         user0_.secondary_user_name     AS secondary32_20_, 
         user0_.modified_ticks          AS modified33_20_, 
         user0_.home_directory          AS home34_20_ 
FROM     tbl_user user0_ 
WHERE    user0_.deleted='N' 
ORDER BY user0_.user_name ASC 
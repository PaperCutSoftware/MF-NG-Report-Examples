--An example to get data for the last 30 days

declare @start_date datetime
declare @end_date datetime

set @end_date = getdate()
set @start_date = DATEADD(DAY,-30,@end_date)

SELECT     group3_.group_name                       AS col_0_0_, 
           account4_.account_name                   AS col_1_0_, 
           account4_.sub_name                       AS col_2_0_, 
           account4_.pin                            AS col_3_0_, 
           account4_.sub_pin                        AS col_4_0_, 
           Sum(printerusa0_.total_pages)            AS col_5_0_, 
           Avg(printerusa0_.total_pages)    		AS col_6_0_, 
           Sum(printerusa0_.usage_cost)             AS col_7_0_, 
           Avg(printerusa0_.usage_cost)             AS col_8_0_, 
           Count(printerusa0_.printer_usage_log_id) AS col_9_0_, 
           Sum(printerusa0_.total_color_pages)      AS col_10_0_, 
           Sum(printerusa0_.duplex_pages)           AS col_11_0_ 
FROM       tbl_printer_usage_log printerusa0_ 
INNER JOIN tbl_user user1_ 
ON         printerusa0_.used_by_user_id=user1_.user_id 
INNER JOIN tbl_user_group grouplinks2_ 
ON         user1_.user_id=grouplinks2_.user_id 
INNER JOIN tbl_group group3_ 
ON         grouplinks2_.group_id=group3_.group_id 
INNER JOIN tbl_account account4_ 
ON         printerusa0_.assoc_with_account_id=account4_.account_id 
WHERE      account4_.account_type='SHARED' 
AND        printerusa0_.usage_date>=@start_date
AND        printerusa0_.usage_allowed='Y'
AND        printerusa0_.refunded='N' 
AND        printerusa0_.printed='Y' 
GROUP BY   group3_.group_name , 
           account4_.account_type , 
           account4_.account_name , 
           account4_.sub_name , 
           account4_.pin , 
           account4_.sub_pin 
ORDER BY   Lower(group3_.group_name), 
           account4_.account_type, 
           Lower(account4_.account_name), 
           Lower(account4_.sub_name)
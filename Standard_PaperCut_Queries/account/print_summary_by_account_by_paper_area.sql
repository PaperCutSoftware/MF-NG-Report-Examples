SELECT     printerusa0_.printer_usage_log_id  AS printer1_14_0_, 
           account4_.account_id               AS account1_0_1_, 
           printerusa0_.usage_date            AS usage2_14_0_, 
           printerusa0_.usage_day             AS usage3_14_0_, 
           printerusa0_.used_by_user_id       AS used4_14_0_, 
           printerusa0_.charged_to_account_id AS charged5_14_0_, 
           printerusa0_.usage_cost            AS usage6_14_0_, 
           printerusa0_.usage_allowed         AS usage7_14_0_, 
           printerusa0_.printer_id            AS printer8_14_0_, 
           printerusa0_.original_printer_id   AS original9_14_0_, 
           printerusa0_.job_id                AS job10_14_0_, 
           printerusa0_.document_name         AS document11_14_0_, 
           printerusa0_.client_machine        AS client12_14_0_, 
           printerusa0_.total_pages           AS total13_14_0_, 
           printerusa0_.total_sheets          AS total14_14_0_, 
           printerusa0_.copies                AS copies14_0_, 
           printerusa0_.paper_size            AS paper16_14_0_, 
           printerusa0_.paper_height_mm       AS paper17_14_0_, 
           printerusa0_.paper_width_mm        AS paper18_14_0_, 
           printerusa0_.printer_language      AS printer19_14_0_, 
           printerusa0_.document_size_kb      AS document20_14_0_, 
           printerusa0_.denied_reason         AS denied21_14_0_, 
           printerusa0_.duplex                AS duplex14_0_, 
           printerusa0_.gray_scale            AS gray23_14_0_, 
           printerusa0_.printed               AS printed14_0_, 
           printerusa0_.cancelled             AS cancelled14_0_, 
           printerusa0_.refunded              AS refunded14_0_, 
           printerusa0_.assoc_with_account_id AS assoc27_14_0_, 
           printerusa0_.total_color_pages     AS total28_14_0_, 
           printerusa0_.color_pages_estimated AS color29_14_0_, 
           printerusa0_.job_type              AS job30_14_0_, 
           printerusa0_.invoiced              AS invoiced14_0_, 
           printerusa0_.job_comment           AS job32_14_0_, 
           printerusa0_.protocol              AS protocol14_0_, 
           printerusa0_.original_usage_cost   AS original34_14_0_, 
           printerusa0_.refund_status         AS refund35_14_0_, 
           printerusa0_.refund_request_id     AS refund36_14_0_, 
           printerusa0_.replayed              AS replayed14_0_, 
           printerusa0_.signature             AS signature14_0_, 
           printerusa0_.hardware_check_status AS hardware39_14_0_, 
           printerusa0_.hardware_check_id     AS hardware40_14_0_, 
           printerusa0_.job_uid               AS job41_14_0_, 
           printerusa0_.archive_path          AS archive42_14_0_, 
           printerusa0_.duplex_pages          AS duplex43_14_0_, 
           printerusa0_.offline_usage         AS offline44_14_0_, 
           printerusa0_.print_queue_id        AS print45_14_0_, 
           account4_.account_type             AS account2_0_1_, 
           account4_.account_name             AS account3_0_1_, 
           account4_.balance                  AS balance0_1_, 
           account4_.restricted               AS restricted0_1_, 
           account4_.overdraft                AS overdraft0_1_, 
           account4_.pin                      AS pin0_1_, 
           account4_.use_global_overdraft     AS use8_0_1_, 
           account4_.notes                    AS notes0_1_, 
           account4_.deleted                  AS deleted0_1_, 
           account4_.deleted_date             AS deleted11_0_1_, 
           account4_.created_date             AS created12_0_1_, 
           account4_.created_by               AS created13_0_1_, 
           account4_.modified_date            AS modified14_0_1_, 
           account4_.modified_by              AS modified15_0_1_, 
           account4_.parent_id                AS parent16_0_1_, 
           account4_.account_name_lower       AS account17_0_1_, 
           account4_.sub_name                 AS sub18_0_1_, 
           account4_.sub_name_lower           AS sub19_0_1_, 
           account4_.disabled                 AS disabled0_1_, 
           account4_.disabled_until           AS disabled21_0_1_, 
           account4_.comments                 AS comments0_1_, 
           account4_.invoicing                AS invoicing0_1_, 
           account4_.sub_pin                  AS sub24_0_1_, 
           account4_.modified_ticks           AS modified25_0_1_ 
FROM       tbl_printer_usage_log printerusa0_ 
INNER JOIN tbl_printer printer1_ 
ON         printerusa0_.printer_id=printer1_.printer_id 
INNER JOIN tbl_user user2_ 
ON         printerusa0_.used_by_user_id=user2_.user_id 
INNER JOIN tbl_account account3_ 
ON         printerusa0_.charged_to_account_id=account3_.account_id 
INNER JOIN tbl_account account4_ 
ON         printerusa0_.assoc_with_account_id=account4_.account_id 
WHERE      account4_.account_type='SHARED' 
AND        printerusa0_.usage_date>=@start_date 
AND        printerusa0_.usage_allowed='Y' 
AND        printerusa0_.refunded='N' 
AND        printerusa0_.printed='Y' 
ORDER BY   account4_.account_type, 
           account4_.account_name_lower, 
           account4_.sub_name_lower [1378223064@http-12]
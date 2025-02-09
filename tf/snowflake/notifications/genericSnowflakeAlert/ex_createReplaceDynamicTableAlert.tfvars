snowflakeAlertAction = <<-EOF
CALL SYSTEM$SEND_SNOWFLAKE_NOTIFICATION(
  SNOWFLAKE.NOTIFICATION.TEXT_PLAIN(
    SNOWFLAKE.NOTIFICATION.SANITIZE_WEBHOOK_CONTENT('A user created or replaced Dynamic Table:\n\nF000725.ANALYTICS_READY_TABLES')
  ),
  SNOWFLAKE.NOTIFICATION.INTEGRATION('my_slack_webhook_int')
);
EOF

snowflakeAlertSchedule = {
  cron = {
    expression = "0 * * * *"
    time_zone  = "America/Los_Angeles"
  }
}

snowflakeAlertComment = "F000725.ANALYTICS_READY_TABLES dynamic table create alert"

snowflakeAlertCondition = <<-EOF
SELECT 
    USER_NAME, 
    QUERY_TEXT, 
    START_TIME,
    EXECUTION_STATUS
FROM 
    SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE 
    QUERY_TEXT ILIKE '%create or replace dynamic table F000725.ANALYTICS_READY_TABLES%'
    AND START_TIME >= DATEADD(hour, -1, CURRENT_TIMESTAMP())
    AND EXECUTION_STATUS = 'SUCCESS'
    AND USER_NAME != 'ART_AUTOMATOR'
    AND USER_NAME != 'SYSTEM'
    AND USER_NAME != 'TF'
    AND USER_NAME != 'SCONDO'
ORDER BY 
    START_TIME DESC
EOF

snowflakeAlertDatabase = "F000725"

resourceName = "F000725-dynamic-table-create-replace"

snowflakeAlertSchema = "ANALYTICS_READY_TABLES"
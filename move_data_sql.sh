sqoop import \
    --connect jdbc:oracle:thin:baochidata@//ip:port/orclpdb1 \
    --username  \
    --password  \
    --table province_user_posts \
    --fields-terminated-by '|' \
    --hcatalog-database test \
    --hcatalog-table province_user_posts_parquet_partition \
    --columns "ID,FBUID,CREATED_TIME,MESSAGE,PERMALINK_URL,UPDATED_TIME,WEB_LINK,KEYPHRASE,SPAM,TINH" -m 1 --fetch-size 200000

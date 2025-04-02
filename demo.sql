SELECT *
FROM "awsdatacatalog"."aws:cloudtrail"."{eventdatastore_id}"
WHERE recipientaccountid = '{account_id}' AND
    cast(eventtime as TIMESTAMP) > timestamp '{start_time}'
    AND cast(eventtime as TIMESTAMP) < timestamp '{end_time}'
    AND eventName = 'GetBucketAcl'
# aws-taskrunner-docker
Simple Docker container to run [AWS Task Runner](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-how-task-runner-user-managed.html) for your DataPipeline. We save a lot of $$$ by running our own Task Runner.

## How to use

    # pull latest image
    $ docker pull kienpham2000/aws-taskrunner-docker

    # start the container with one required option
    $ docker run -d kienpham2000/aws-taskrunner-docker --workerGroup=my_group

## All supported options
| args  |  explain |
|---|---|
|--help   |Print help   |
|--config=VALUE   | json Description  |
|--accessId=VALUE|Access id|
| --secretKey=VALUE|Secret key |
| --endpoint=VALUE|DataPipeline Service endpoint to use |
| --workerGroup=VALUE (**required**)| Worker Group Name|
| --taskrunnerId=VALUE| Used to report heartbeat for taskrunner|
| --output=VALUE| Default Output Directory|
| --tasks=VALUE| Number of task poll threads to run simultaneously, defaults to 2.|
| --region=VALUE| The region to run in, defaults to us-east-1|
| --logUri=VALUE|The location in S3 into which to place log files |
| --proxyHost=VALUE| Host of the proxy which clients will use to connect to AWS Services|
| --proxyPort=VALUE| Port of the proxy host which the clients will use to connect to AWS Services|
| --proxyUsername=VALUE| username for proxy|
| --proxyPassword=VALUE| password for proxy|
| --proxyDomain=VALUE| Windows domain name for NTLM Proxy|
| --proxyWorkstation=VALUE| Windows work station name for NTLM Proxy|
| --jdbcDriverS3Path=VALUE| S3 path from where task runner pickups jdbc driver to connect to redshift and mysql|
| --s3NoProxy=VALUE| Not use http proxy to connect s3|

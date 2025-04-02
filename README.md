# Export a subset of cloudtrail events to an s3 bucket

A solution to export filtered AWS CloudTrail Lake events to Amazon S3 buckets in Parquet format for focused analysis and third-party integrations.

## Overview

This solution automates the process of exporting specific CloudTrail Lake events to S3 using AWS native services. It helps organizations streamline their security monitoring, compliance reporting, and operational analysis by filtering relevant events instead of processing all CloudTrail data.
Architecture

## Solution Architecture

![alt text](<Screenshot 2025-03-14 at 5.01.00 PM.png>)

## Key Components:

    EventBridge Rule: Schedules automated export jobs
    Lambda Function: Executes Athena queries and manages data export
    Athena Database: Stores CloudTrail Lake event data
    S3 Bucket: Stores filtered events in Parquet format

## Prerequisites

### Before deployment, ensure you have:

    Created a CloudTrail Lake event data store with query federation enabled
    Set up an S3 bucket to store custom queries
    AWS CLI configured with appropriate permissions

## Deployment

    Download the required files:
        CloudFormation template
        demo.sql query file

    Upload the demo.sql to your custom query S3 bucket

    Deploy via CloudFormation:

aws cloudformation create-stack --stack-name cloudtrail-lake-export --template-body file://template.yaml

### Configuration Parameters

    Stack Name
    Athena Configuration
        Account number and region
        Query output location
        Database name
        Event Data Store ID
    S3 Configuration
        Export bucket name
        Custom query bucket name


## Cleanup

To avoid ongoing charges, delete the following resources:

    CloudFormation stack
    IAM policies and roles
    CloudTrail Lake data store
    S3 buckets

## Benefits

    Unified Management: Single console operation
    Cost Optimization: Process only relevant events
    Automated Operations: Scheduled exports
    Simplified Analysis: Focused event monitoring
    Compliance Ready: Export specific events for auditing

## License

This project is licensed under the MIT License - see the LICENSE file for details.
Contributing

Contributions are welcome! Please read our contributing guidelines before submitting pull requests.
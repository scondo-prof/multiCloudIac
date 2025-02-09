from pyspark.sql import SparkSession
from pyspark.sql.functions import year, month


def main():
    # Initialize SparkSession rename appName to something meaningful
    spark = SparkSession.builder.appName("MyApp").getOrCreate()

    SOURCE_DIR = "s3://api-ingestion-bucket/example-dir/"

    TARGET_DIR = "s3://bc-eks-emr-output-bucket/partitioned/example/"

    print("Spark Configuration:")

    # Load all files from the S3 directory
    df = spark.read.parquet(SOURCE_DIR + "*.parquet")

    # df_partitioned = df.withColumn("pixelid", df["pixelid"])
    print("df done")

    # Partition by something significant.
    df.write.mode("overwrite").partitionBy("pixelid").parquet(TARGET_DIR)

    print("finished uploading")

    # Stop the SparkSession
    spark.stop()


if __name__ == "__main__":
    main()

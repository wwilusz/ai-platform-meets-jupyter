JOB_NAME=custom_container_jupyai_sample_$(date +%Y%m%d_%H%M%S)
echo "LAUNCHING $JOB_NAME JOB"

gcloud ai-platform jobs submit training $JOB_NAME \
  --region $REGION \
  --master-image-uri $IMAGE_URI \
  --scale-tier BASIC \
  -- \
  --artifacts-dir=$BUCKET_ID \
  --epochs=10
INPUT=$1
DEST=$2
indices=$(curl -s -XGET $INPUT/_cat/indices?h=i)
for INDEX in $indices
do
  docker run --rm -ti elasticdump/elasticsearch-dump --input=$INPUT/$INDEX --output=$DEST/$INDEX --type=mapping
  docker run --rm -ti elasticdump/elasticsearch-dump --input=$INPUT/$INDEX --output=$DEST/$INDEX --type=data
done

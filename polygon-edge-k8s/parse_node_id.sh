input="data-dir-test/nodeId.txt"
while IFS='=' read -ra line; do
    #echo "full array ${line[*]}"
    #echo "1st element ${line[0]}"
    #echo "2th element ${line[1]}"
    #echo "array length ${line[*]}"
  if [[ "${line[0]}" == Node* ]]; then
    nodeId="${line[1]}"
    echo "${nodeId:1}"
  fi
  # for i in "${ADDR[@]}"; do
  #  echo $i
  # done
done < "$input"



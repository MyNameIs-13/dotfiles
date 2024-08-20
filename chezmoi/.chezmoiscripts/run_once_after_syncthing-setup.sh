#!/bin/bash

# Path to your JSON file
JSON_FILE="/home/${USER}/.config/syncthing/config.json"

# Check if the JSON file exists
if [[ ! -f "${JSON_FILE}" ]]; then
    echo "Error: File ${JSON_FILE} does not exist."
    exit 1
fi

# Extract the control_node string
CONTROL_NODE=$(jq -r '.control_node' "${JSON_FILE}")
echo "Control Node: ${CONTROL_NODE}"
syncthing cli config devices add --device-id "${CONTROL_NODE}"
syncthing cli config devices "${CONTROL_NODE}" auto-accept-folders set true

# Loop through each folder entry
jq -c '.folders[]' "${JSON_FILE}" | while IFS= read -r folder; do
    id=$(echo "${folder}" | jq -r '.id')
    label=$(echo "${folder}" | jq -r '.label')
    path=$(echo "${folder}" | jq -r '.path')

    # Call the syncthing command with the extracted variables
    syncthing cli config folders add --id "${id}" --label "${label}" --path "${path}"
    syncthing cli config folders "${label}" devices add --device-id "${CONTROL_NODE}"
done

echo "syncthing device id"
syncthing --device-id
#!/usr/bin/env bash
export AMI_NAME=$(jq "[.builds[] | { packer_run_uuid, artifact_id }]" manifest.json | jq --arg PACKER_RUN_UUID "$PACKER_RUN_UUID" '.[] | select(.packer_run_uuid == $PACKER_RUN_UUID)' | jq '.artifact_id' |  cut -f 2 -d ":" | tr -d \")
kitchen test

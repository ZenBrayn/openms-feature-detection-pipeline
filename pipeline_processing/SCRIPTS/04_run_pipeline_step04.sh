#!/bin/bash

# Stage 1: R processing
# again, process outside of the Docker container
SCRIPTS/PIPELINE/11_parse_consensusXML_final.R

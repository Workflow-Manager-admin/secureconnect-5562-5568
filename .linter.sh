#!/bin/bash
cd /home/kavia/workspace/code-generation/secureconnect-5562-5568/main_container_for_secureconnect
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi


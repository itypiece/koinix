#!/usr/bin/env bash
rm -rf lock && mkdir lock
yarn ts-node src/index.ts
yarn ts-node src/remove_invalid_packages.ts
cd lock
npm install koishi-plugin-chatluna koishi-plugin-chatluna-google-gemini-adapter koishi-plugin-chatluna-openai-adapter koishi-plugin-chatluna-character --legacy-peer-deps --force
npm install --package-lock-only --legacy-peer-deps --force
cp * ../../generated/

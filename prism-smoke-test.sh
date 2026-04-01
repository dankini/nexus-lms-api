#!/bin/bash

BASE="http://localhost:4010"
TOKEN="Bearer test-token"
# Sample institution user id (matches spec examples)
USER_ID="f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"

printf '\n--- GET /utilities/health ---\n'
curl -s "$BASE/utilities/health" | python3 -m json.tool

printf '\n--- POST /auth/token ---\n'
curl -s -X POST "$BASE/auth/token" \
  -H "Content-Type: application/json" \
  -d '{"client_id":"test","client_secret":"test","grant_type":"client_credentials"}' | python3 -m json.tool

printf '\n--- GET /users ---\n'
curl -s "$BASE/users" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /users/:id ---\n'
curl -s "$BASE/users/$USER_ID" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /courses ---\n'
curl -s "$BASE/courses" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /progress ---\n'
curl -s "$BASE/progress" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /live-lessons ---\n'
curl -s "$BASE/live-lessons" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /live-lessons-detailed ---\n'
curl -s "$BASE/live-lessons-detailed" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /certificates ---\n'
curl -s "$BASE/certificates" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /users/:id/progress ---\n'
curl -s "$BASE/users/$USER_ID/progress" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /users/:id/live-lessons (lean) ---\n'
curl -s "$BASE/users/$USER_ID/live-lessons" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /users/:id/live-lessons-detailed ---\n'
curl -s "$BASE/users/$USER_ID/live-lessons-detailed" -H "Authorization: $TOKEN" | python3 -m json.tool

printf '\n--- GET /users/:id/certificates ---\n'
curl -s "$BASE/users/$USER_ID/certificates" -H "Authorization: $TOKEN" | python3 -m json.tool

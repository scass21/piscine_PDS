#!/bin/sh
curl -X GET  -H 'User-Agent: HH-User-Agent' "https://api.hh.ru/vacancies?vacancy_search_fields='name'&text='data+scientist'&per_page=20" | jq '.' > hh.json

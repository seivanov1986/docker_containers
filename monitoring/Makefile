start:
	docker-compose up -d

stop:
	docker-compose down

test_alert:
	curl -X POST http://localhost:9093/api/v2/alerts \
	--header 'Content-Type: application/json' \
	--data '[{"status":"firing","labels":{"alertname":"TestAlert","severity":"critical","instance":"example.com"},"annotations":{"summary":"This is a test alert","description":"This alert is for testing purposes only."},"generatorURL":"http://example.com"}]'

# monitoring

1. создать .env на основе .env.sample
2. создать monitoring/configs/alert_bot/config.yaml на основе monitoring/configs/alert_bot/config.yaml.example
3. создать monitoring/configs/alertmanager/alertmanager.yml на основе monitoring/configs/alertmanager/alertmanager.yml.example
4. склонировать https://github.com/inCaller/prometheus_bot и выполнить docker build -t incaller/prometheus_bot:latest .
5. make start

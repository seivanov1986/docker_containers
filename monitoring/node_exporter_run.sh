#!/bin/bash

# 1. Скачиваем Node Exporter в /tmp
echo "Скачивание Node Exporter..."
wget -P /tmp https://github.com/prometheus/node_exporter/releases/download/v1.9.0/node_exporter-1.9.0.linux-amd64.tar.gz

# 2. Разархивируем скачанный файл
echo "Разархивирование Node Exporter..."
tar xvfz /tmp/node_exporter-1.9.0.linux-amd64.tar.gz -C /tmp

# 3. Создаем директорию /etc/node_exporter, если она не существует
echo "Создание директории /etc/node_exporter..."
sudo mkdir -p /etc/node_exporter

# 4. Перемещаем исполняемый файл node_exporter в /etc/node_exporter
echo "Перемещение исполняемого файла в /etc/node_exporter..."
sudo mv /tmp/node_exporter-1.9.0.linux-amd64/node_exporter /etc/node_exporter/

# 5. Создаем systemd-юнит для управления Node Exporter
echo "Создание systemd-юнита для Node Exporter..."
cat <<EOF | sudo tee /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
After=network.target

[Service]
User=root
ExecStart=/etc/node_exporter/node_exporter --collector.systemd --collector.processes
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# 6. Перезагружаем systemd и запускаем Node Exporter
echo "Перезагрузка systemd и запуск Node Exporter..."
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter

# 7. Проверяем статус службы
echo "Проверка статуса Node Exporter..."
sudo systemctl status node_exporter

# 8. Очистка временных файлов в /tmp
echo "Очистка временных файлов в /tmp..."
rm -rf /tmp/node_exporter-1.9.0.linux-amd64 /tmp/node_exporter-1.9.0.linux-amd64.tar.gz
echo "Временные файлы удалены."
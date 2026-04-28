## Task 1 - Service / process troubleshooting (mini runbook)

- Identify all the services --> systemctl list-units --type=service --state=running
- Pick the target service --> systemctl status systemd-networkd.service
- Check CPU, Memory, usage --> ps -o pid,cmd,%mem,%cpu -C systemd-networkd.service
- Check disk usage if memory getting full --> df -h
- check network connectivity --> ss -tulpn | grep systemd-networkd.service
- check logs --> journalctl -u systemd-networkd.service -n 20



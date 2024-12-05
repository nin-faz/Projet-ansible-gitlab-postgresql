# Utiliser l'image officielle GitLab Community Edition
FROM gitlab/gitlab-ce:latest

# Définir les variables d'environnement pour la configuration de GitLab
ENV GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.vlne.lan:9080'; nginx['listen_port'] = 80; gitlab_rails['gitlab_shell_ssh_port'] = 2222; gitlab_rails['backup_path'] = '/var/opt/gitlab/backups'; gitlab_rails['gitlab_data_dir'] = '/var/opt/gitlab'; gitlab_rails['gitlab_log_dir'] = '/var/log/gitlab'"

# Exposer les ports pour HTTP, HTTPS et SSH
EXPOSE 9080 9443 2222

# Commande par défaut pour démarrer GitLab
CMD ["/assets/wrapper"]

#!/bin/bash

while [ "$rolename" != "ok" ]
do
    # Demande à l'utilisateur le rôle qu'il veut créer
    read -p 'Quel rôle veux-tu créer ? ("ok" pour terminer)' rolename
    if [ "$rolename" == "ok" ]; then
        break
    fi

    echo "Création du rôle : $rolename"

    # Création de la structure des répertoires pour le rôle spécifié
    mkdir -p roles/$rolename/tasks
    mkdir -p roles/$rolename/handlers
    mkdir -p roles/$rolename/defaults
    mkdir -p roles/$rolename/meta
    mkdir -p roles/$rolename/files

    # Création des fichiers main.yml vides dans les répertoires correspondants
    touch roles/$rolename/tasks/main.yml
    touch roles/$rolename/handlers/main.yml
    touch roles/$rolename/defaults/main.yml
    touch roles/$rolename/meta/main.yml

    echo "Rôle $rolename créé avec succès, avec les fichiers main.yml vides !"
done

echo "Terminé. Tous les rôles souhaités ont été créés."

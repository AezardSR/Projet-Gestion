docker compose down

docker compose build

# Démarrer les services avec docker-compose
docker compose up -d

# Récupérer l'ID du conteneur par son nom
container_name="projet-gestion-game-web"
container_id=$(docker ps -qf "name=$container_name")

# Vérifier si le conteneur existe
if [ -z "$container_id" ]; then
    echo "Erreur: Le conteneur $container_name n'existe pas ou n'est pas en cours d'exécution."
    exit 1
fi

# Entrer dans l'invite de commande du conteneur
docker exec -it $container_id sh
# METEO

Description du projet

## Pour commencer

### 1- Cloner le projet

```bash
git clone git@github.com:sebauvray/meteo.git
```

### 2- Se rendre dans le projet

```bash
cd meteo
```

### 3- Récupération des submodule

```bash
git submodule init
git submodule update
```

### 4- Démmarrer docker

```bash
docker-compose up -d
```

### 4- Installation des dépendances

```bash
docker exec -it nestjs npm install
```

### 4- Démarrage du back

```bash
docker exec -it nestjs nest start
```

### 4- Démarrage du front

```bash
docker exec -it react npm start
```

:warning: Pour des installation custom, il faut modifier le fichier d'environnement.


Le projet est enfin prêt.

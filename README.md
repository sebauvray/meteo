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

:warning: Pour des installation custom, il faut modifier le fichier d'environnement.


Le projet est enfin prêt.

#!/bin/bash

PROJECT_NAME="Mada-Plan-2035"

echo "Création du projet $PROJECT_NAME..."

# Création dossier racine
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME || exit

# Dossiers principaux
mkdir -p config
mkdir -p docs/2_Architecture_UML
mkdir -p docs/3_Dossier_Algo
mkdir -p data/logs
mkdir -p results/{simulations,exports,graphs}
mkdir -p tests
mkdir -p src/{core,ai,simulation,services,utils,ui}

# Fichiers racine
touch README.md requirements.txt .gitignore

# Config
touch config/__init__.py
touch config/settings.py
touch config/default_parameters.json

# Docs
touch docs/1_Cahier_Des_Charges.pdf
touch docs/2_Architecture_UML/{UseCase.png,ClassDiagram.png,SequenceDiagram.png}
touch docs/3_Dossier_Algo/{Choix_Algorithmes.md,Complexite.md,Resultats_Tests.pdf}
touch docs/4_Manuel_Utilisateur.pdf

# Data
touch data/{districts_2025.json,routes.json,projets_catalogue.json,config_simulation.json}
touch data/logs/simulation_2026.log

# Results
touch results/simulations/{baseline_2035.json,optimized_2035.json}
touch results/exports/rapport_final.pdf
touch results/graphs/{evolution_chomage.png,evolution_energie.png}

# Tests
touch tests/__init__.py
touch tests/{test_models.py,test_graph.py,test_scoring.py,test_optimizer.py,test_simulation.py}

# Src Core
touch src/core/__init__.py
touch src/core/{district.py,route.py,projet.py,graphe.py,structures.py}

# Src AI
touch src/ai/__init__.py
touch src/ai/{clustering.py,scoring_engine.py,optimizer.py}

# Simulation
touch src/simulation/__init__.py
touch src/simulation/{time_engine.py,scenario_manager.py}

# Services
touch src/services/__init__.py
touch src/services/{simulation_service.py,reporting_service.py}

# Utils
touch src/utils/__init__.py
touch src/utils/{data_loader.py,validator.py,logger.py,visualizer.py}

# UI
touch src/ui/__init__.py
touch src/ui/{dashboard.py,components.py,charts.py}

echo "--------------------------------------------------"
echo "Structure du projet créée avec succès !"
echo "--------------------------------------------------"

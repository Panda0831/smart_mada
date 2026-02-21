from typing import Dict, List


class District:
    def __init__(self, id: int, nom: str, region: str, coordonnees: list[float]):
        self.id = id
        self.nom = nom
        self.region = region
        self.coordonnees = coordonnees  # [latitude, longitude]

        self.population: int = 0
        self.taux_croissance: float = 0.0
        self.densite_population: float = 0.0

        self.taux_chomage: float = 0.0
        self.revenu_moyen: float = 0.0
        self.taux_pauvrete: float = 0.0

        self.taux_education: float = 0.0
        self.nbr_ecoles: int = 0
        self.capacite_scolaire: int = 0

        self.longueur_routes: float = 0.0
        self.pourcentage_routes_bonnee_etat: float = 0.0
        self.pourcentage_routes_mauvaise_etat: float = 0.0
        self.pourcentage_routes_moyenne_etat: float = 0.0
        self.type_de_route_dominante: str = ""
        self.indice_connectivite_routiere: float = 0.0

        self.acces_energie: float = 0.0
        self.acces_internet: float = 0.0
        self.nombres_antennes_relais: int = 0
        self.capacite_reseau_mobile: float = 0.0

        self.secteur_dominant: str = ""
        self.repartition_secteurs: Dict[str, float] = {}
        self.taux_emploi_secteur_dominant: float = 0.0

        self.score_priorite: float = 0.0
        self.cluster_id: int = -1
        self.categorie_priorite: str = "Normal"  # ex: "Critique", "Urgent"

        self.historique_indicateurs: Dict[int, Dict] = {}

        self.liste_projets: List["Projet"] = []
        self.budget_recu_total: float = 0.0

        self.centralite: float = 0.0

    def __str__(self):
        return f"{self.nom} (ID: {self.id}) - Prio: {self.score_priorite:.2f}"

    def to_dict(self):
        """Pour faciliter l'export en JSON si besoin"""
        return {
            "id": self.id,
            "nom": self.nom,
            "score_priorite": self.score_priorite,
            "chomage": self.taux_chomage,
            "education": self.taux_education,
            "energie": self.acces_energie,
        }

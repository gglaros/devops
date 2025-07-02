# DevOps Project - Εφαρμογή Πληροφοριακού Συστήματος

## Περιγραφή

Αυτό το project υλοποιεί ένα πλήρες πληροφοριακό σύστημα με χρήση Spring Boot, Docker, Kubernetes, Jenkins και Ansible. Περιλαμβάνει βάση δεδομένων, σύστημα authentication, μηχανισμό αποστολής emails και αυτοματοποιημένο pipeline.

## Περιεχόμενα

* Spring Boot εφαρμογή (Java 17)
* PostgreSQL DB
* Keycloak (authentication)
* Mailhog (SMTP testing)
* Jenkins CI/CD pipeline
* Kubernetes YAML manifests
* Ansible playbooks για εγκατάσταση σε VM

---

## 🔧 Εκκίνηση με Docker Compose (τοπικά ή σε VM)

```bash
cd devops-project
docker-compose up --build -d
```

### Πόρτες

* App: [http://localhost:8080](http://localhost:8080)
* Keycloak: [http://localhost:8081](http://localhost:8081)
* Mailhog: [http://localhost:8025](http://localhost:8025)
* PostgreSQL: πόρτα 5432 (προσβάσιμη από app)

---

## 🚀 Deploy στο Kubernetes

```bash
kubectl apply -f kubernetes/
```

> Περιλαμβάνει: Deployments, Services, PVC (DB), Ingress (προαιρετικό)

---

## 🛠 Jenkins Pipeline

Το Jenkinsfile περιλαμβάνει:

* Maven build
* Docker build & push
* Deploy στο Kubernetes με `kubectl`

Το pipeline τρέχει αυτόματα κάθε φορά που γίνεται commit στο Git.

---

## ⚙️ Ανάπτυξη με Ansible (σε VM)

### Εκτέλεση:

```bash
cd ansible
ansible-playbook -i inventory.ini deploy-playbook.yml
```

### Προϋποθέσεις:

* VM με SSH πρόσβαση (Ubuntu)
* Docker + Docker Compose εγκαθίστανται αυτόματα

---

## 🔐 Keycloak

* URL: [http://localhost:8081](http://localhost:8081)
* Admin: `admin` / `admin`
* Δημιουργήθηκε Realm και client για την εφαρμογή

---

## 📬 Mailhog

* URL: [http://localhost:8025](http://localhost:8025)
* Δέχεται και προβάλλει email που στέλνει η εφαρμογή

---

## 📄 Endpoints της Εφαρμογής (παράδειγμα)

| Μέθοδος | Endpoint       | Περιγραφή       |
| ------- | -------------- | --------------- |
| POST    | /requests      | Υποβολή αίτησης |
| GET     | /requests/{id} | Προβολή αίτησης |
| POST    | /auth/login    | Σύνδεση χρήστη  |

---

## 📂 Δομή Project

```
devops-project/
├── app/                # Spring Boot εφαρμογή
├── kubernetes/         # Kubernetes YAMLs
├── ansible/            # Ansible playbooks
├── docker-compose.yml  # Local deployment
└── README.md
```

---

## ✅ Υλοποιήθηκαν πλήρως

* Docker-based περιβάλλον
* Kubernetes cluster με όλες τις υπηρεσίες
* Jenkins pipeline με CI/CD
* Ansible deploy σε VM με docker-compose

## ❌ Δεν υλοποιήθηκαν (προαιρετικά / bonus)

* HTTPS + FQDN
* Object storage (π.χ. MinIO)

---

## 👨‍💻 Συντάκτης

* Γιώργος Γλάρος
* Παράδοση: 2/7/2025

---

Έτοιμο για υποβολή ✉️

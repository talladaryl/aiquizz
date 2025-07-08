
# QuizzAI - Documentation d'installation

## 🚀 Installation du projet sous WAMP64

### 📌 Prérequis

- WAMP64 installé (ou tout autre environnement Apache/MySQL/PHP)
- Navigateur web
- Accès à phpMyAdmin
- Composer installé 


### 🔧 Étapes d'installation

#### 1️⃣ Créer un VirtualHost dans WAMP

1. Ouvrez le menu de WAMP (clic gauche sur l'icône verte)
2. Allez dans **Apache > httpd-vhosts.conf**
3. Ajoutez la configuration suivante à la fin du fichier :

```apache
<VirtualHost *:80>
    DocumentRoot "C:/wamp64/www/quizwhizai/public"
    ServerName quizwhizai.local
    <Directory "C:/wamp64/www/quizwhizai/public">
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

4. Modifiez le fichier `C:\Windows\System32\drivers\etc\hosts` en tant qu'administrateur et ajoutez :

```
127.0.0.1     quizwhizai.local
```

5. Redémarrez les services WAMP.

---

#### 2️⃣ Importer la base de données

- Ouvrez **phpMyAdmin**
- Créez une base de données nommée **quizwhizai**
- Cliquez sur **Importer** puis sélectionnez le fichier `.sql` situé à la racine du projet
- Lancez l'importation

---

#### 3️⃣ Lancer le projet

- Ouvrez votre navigateur
- Accédez à : `http://quizwhizai.local`

Le projet devrait se charger correctement.

---

### 💡 Conseils supplémentaires


```
DB_DATABASE=quizwhizai
DB_USERNAME=root
DB_PASSWORD=
```

**Composer**, exécutez les commandes suivantes :

```bash
composer install
php artisan key:generate
php artisan migrate
php artisan db:seed
```

---

> ✅ Votre projet QuizWhizAI est maintenant prêt à l'emploi !

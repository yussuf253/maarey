// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Naboo';

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get storeAccountGroup => 'Magasin & Compte';

  @override
  String get appearanceNotificationsGroup => 'Apparence & Notifications';

  @override
  String get dataBackupGroup => 'Données & Sauvegarde';

  @override
  String get subscriptionSupportGroup => 'Abonnement & Support';

  @override
  String get storeInfo => 'Informations du Magasin';

  @override
  String get storeInfoSubtitle => 'Nom, adresse, logo, succursale';

  @override
  String get invoiceSettings => 'Paramètres des Factures';

  @override
  String get invoiceSettingsSubtitle => 'Numéro de départ, pied de page, taxe, remise';

  @override
  String get businessFeatures => 'Fonctionnalités Commerciales';

  @override
  String get businessFeaturesSubtitle => 'Clients, fidélité, taxe, remise, dette, paiement échelonné, poids, vêtements et services';

  @override
  String get customizeDashboard => 'Personnaliser le Tableau de Bord';

  @override
  String get customizeDashboardSubtitle => 'Afficher ou masquer les sections du tableau de bord et réorganiser par glisser-déposer';

  @override
  String get appColorsIdentity => 'Couleurs & Identité de l\'App';

  @override
  String get appColorsIdentitySubtitle => 'Schémas prédéfinis, personnalisés et coins des cartes — s\'applique à tous les écrans';

  @override
  String get compactSnackNotifications => 'Forme des Notifications (Toute l\'App)';

  @override
  String get compactSnackNotificationsSubtitleOn => 'Barres étroites et flottantes sur tous les écrans — depuis les paramètres globaux ici, pas depuis les paramètres du POS';

  @override
  String get compactSnackNotificationsSubtitleOff => 'Mode classique: barre de notification fixe en bas de l\'écran sur toutes les pages';

  @override
  String get idleMode => 'Mode Veille';

  @override
  String idleModeSubtitle(Object minutes) {
    return 'Après inactivité: $minutes';
  }

  @override
  String get arabic => 'Arabe';

  @override
  String get english => 'Anglais';

  @override
  String get french => 'Français';

  @override
  String get floatingWindowMacos => 'Fenêtre Flottante (macOS)';

  @override
  String get floatingWindowSubtitleOn => 'Plusieurs fenêtres peuvent être ouvertes ensemble; la tuile jaune de minimisation se place en bas de l\'écran avec icône pour chaque page — désactiver pour ouvrir dans le contenu';

  @override
  String get floatingWindowSubtitleOff => 'Ces écrans s\'ouvrent dans le contenu. Activez pour utiliser les fenêtres flottantes et les tuiles';

  @override
  String get theme => 'Thème';

  @override
  String get darkMode => 'Mode Sombre';

  @override
  String get lightMode => 'Mode Clair';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsSubtitle => 'Alertes de stock, factures et échéances';

  @override
  String get printingSettings => 'Paramètres d\'Impression';

  @override
  String get printingSettingsSubtitle => 'Format papier, imprimante par défaut';

  @override
  String get restoreData => 'Restaurer les Données';

  @override
  String get restoreDataSubtitle => 'Depuis un fichier ou le cloud';

  @override
  String get subscriptionPlan => 'Plan d\'Abonnement';

  @override
  String get subscriptionPlanSubtitle => 'Compte, appareils et synchronisation automatique';

  @override
  String get trialVersion => 'Version d\'Essai';

  @override
  String get helpSupport => 'Aide & Support';

  @override
  String get helpSupportSubtitle => 'FAQ et contacter le support';

  @override
  String get aboutApp => 'À propos';

  @override
  String get aboutAppSubtitle => 'Version 1.0.0 · NaBoo Store Manager';

  @override
  String get appName => 'NaBoo Store Manager';

  @override
  String get appDescription => 'Application intégrée pour la gestion des ventes, stocks et comptabilité.';

  @override
  String get accountData => 'Données du Compte';

  @override
  String userLabel(Object name) {
    return 'Utilisateur: $name';
  }

  @override
  String emailLabel(Object email) {
    return 'Email: $email';
  }

  @override
  String currentPlanLabel(Object plan) {
    return 'Plan Actuel: $plan';
  }

  @override
  String deviceLimitLabel(Object limit) {
    return 'Limite d\'Appareils: $limit';
  }

  @override
  String get unlimited => 'Illimité';

  @override
  String devicesLabel(Object count) {
    return 'Appareils Enregistrés: $count';
  }

  @override
  String get freeTrial => 'Essai Gratuit';

  @override
  String daysRemaining(Object count) {
    return 'Jours Restants: $count sur 15';
  }

  @override
  String trialEndsAt(Object date) {
    return 'Se termine le: $date';
  }

  @override
  String get subscription => 'Abonnement';

  @override
  String subscriptionExpiresAt(Object date) {
    return 'L\'abonnement expire le: $date';
  }

  @override
  String subscriptionDaysRemaining(Object days) {
    return 'Environ $days jours restants';
  }

  @override
  String get noExpirationDate => 'Abonnement actif sans date d\'expiration spécifique dans le cloud.';

  @override
  String get linkedDevices => 'Appareils Liés';

  @override
  String get refreshTooltip => 'Actualiser';

  @override
  String get noDevicesRegistered => 'Aucun appareil enregistré pour le moment.';

  @override
  String devicePlatform(Object date, Object platform) {
    return '$platform • Dernière activité: $date';
  }

  @override
  String get currentDevice => 'Cet Appareil';

  @override
  String get allowReturn => 'Autoriser le Retour';

  @override
  String get disconnectDevice => 'Déconnecter l\'Appareil';

  @override
  String get autoSync => 'Synchronisation Automatique';

  @override
  String get autoSyncDescription => 'Une copie complète de la base de données est téléchargée depuis chaque appareil; la plus récente du cloud est importée sur les autres appareils après \'Synchroniser\' ou dans ~1 minute. Pas en temps réel par entrée. Le fichier SQL de synchronisation doit être exécuté dans Supabase, et l\'internet doit être activé.';

  @override
  String get syncNow => 'Synchroniser';

  @override
  String lastSync(Object date) {
    return 'Dernière synchronisation: $date';
  }

  @override
  String get syncSuccess => 'Synchronisation terminée avec succès';

  @override
  String get viewSubscriptionPlans => 'Voir les Plans d\'Abonnement';

  @override
  String get storeName => 'Nom du Magasin';

  @override
  String get address => 'Adresse';

  @override
  String get phone => 'Téléphone';

  @override
  String get taxNumber => 'Numéro de Taxe';

  @override
  String get invoiceFooterText => 'Texte de Pied de Page';

  @override
  String get invoiceStartNumber => 'Numéro de Départ des Factures';

  @override
  String get showTax => 'Afficher la Taxe';

  @override
  String get showDiscount => 'Afficher la Remise';

  @override
  String get showLogo => 'Afficher le Logo';

  @override
  String get showFooter => 'Afficher le Pied de Page';

  @override
  String get taxRate => 'Taux de Taxe';

  @override
  String taxRatePercent(Object rate) {
    return '$rate%';
  }

  @override
  String get notificationsBuildFromDb => 'Les notifications sont construites depuis la base de données lors de l\'ouverture du panneau de notification depuis l\'écran d\'accueil.';

  @override
  String get lowStockAlert => 'Alerte de Stock Faible';

  @override
  String get lowStockAlertSubtitle => 'Produits au niveau minimum ou en rupture de stock (avec suivi de stock)';

  @override
  String get negativeStockSaleAlert => 'Alerte de Vente avec Stock Négatif';

  @override
  String get negativeStockSaleAlertSubtitle => 'Après sauvegarde de la facture de vente: numéro de facture, vendeur, client, articles et quantités avant/après le solde';

  @override
  String get financedSaleAlert => 'Alerte de Vente Crédit ou Échelonnée';

  @override
  String get financedSaleAlertSubtitle => 'Lors de la sauvegarde d\'une facture crédit ou échelonnée depuis l\'écran POS: numéro de facture, vendeur, client, montants, lignes, et plan d\'échelonnement si existant';

  @override
  String get expiryAlert => 'Alerte d\'Expiration des Produits';

  @override
  String get expiryAlertSubtitle => 'Expirés, ou dans la \'fenêtre d\'alerte\' avant la date (par produit ou par défaut ci-dessous)';

  @override
  String get defaultExpiryDaysLabel => 'Jours par défaut avant la date d\'expiration pour afficher une alerte \'proche de l\'expiration\' (utilisé lors de l\'ajout d\'un produit si non défini pour l\'article, 1-365).';

  @override
  String get defaultExpiryDaysHint => 'ex: 14';

  @override
  String get defaultExpiryDaysInputLabel => 'Jours d\'Alerte par Défaut';

  @override
  String get saveDefaultDays => 'Enregistrer le Nombre par Défaut';

  @override
  String get installmentAlert => 'Paiements Échelonnés';

  @override
  String get installmentAlertSubtitle => 'En retard ou dus dans les 14 prochains jours';

  @override
  String get customerDebtAlert => 'Dettes des Clients (Crédit)';

  @override
  String get customerDebtAlertSubtitle => 'Solde crédit client, selon les paramètres de dette: âge de la facture, plafond total par client, plafond par facture';

  @override
  String get returnsAlert => 'Enregistrement des Retours';

  @override
  String get returnsAlertSubtitle => 'Derniers retours enregistrés (21 jours)';

  @override
  String get dailyReportAlert => 'Résumé des Ventes du Jour';

  @override
  String get dailyReportAlertSubtitle => 'Total des factures de vente pour aujourd\'hui (hors retours)';

  @override
  String get shiftLifecycleAlert => 'Ouverture/Fermeture du Shift';

  @override
  String get shiftLifecycleAlertSubtitle => 'Notifier le shift et les montants (solde système, inventaire, ajouté, retiré, restant)';

  @override
  String get allowDeviceReturnTitle => 'Autoriser le Retour';

  @override
  String allowDeviceReturnContent(Object deviceName) {
    return 'Autoriser l\'appareil \'$deviceName\' à se reconnecter?';
  }

  @override
  String get disconnectDeviceTitle => 'Déconnecter l\'Appareil';

  @override
  String disconnectDeviceContent(Object deviceName) {
    return 'Appareil: $deviceName\nLa session sera terminée sur cet appareil immédiatement (si connecté), et il ne pourra pas se connecter tant que vous n\'appuyez pas sur \'Autoriser le Retour\' depuis ici.';
  }

  @override
  String get disconnectNow => 'Déconnecter Maintenant';

  @override
  String get deviceDisconnected => 'Appareil déconnecté avec succès';

  @override
  String get deviceAllowed => 'Appareil autorisé à revenir';

  @override
  String get notConnected => 'Non Connecté';

  @override
  String get checking => '…';

  @override
  String get noLicense => 'Sans Licence';

  @override
  String get revokedDevice => 'Déconnecté — ne peut pas entrer tant qu\'approuvé';

  @override
  String get activeLicense => 'Actif';

  @override
  String get inactiveLicense => 'Inactif';

  @override
  String get testTools => 'Ouvrir les Outils de Test…';

  @override
  String get basraStore => 'Magasin de Basra';

  @override
  String get basraIraq => 'Basra, Irak';

  @override
  String get deviceKickedOutTitle => 'Cet appareil a été déconnecté du compte';

  @override
  String get deviceKickedOutBody => 'Votre session sur cet appareil a été terminée. La prochaine fois que vous ouvrirez l\'application, l\'écran de connexion habituel s\'affichera.';

  @override
  String get goToLoginAction => 'Aller à la connexion';

  @override
  String get exitAction => 'Quitter';

  @override
  String get closeWindowHint => 'Vous pouvez fermer cette fenêtre ou utiliser le bouton ci-dessus.';

  @override
  String get appWillCloseHint => 'L\'application va se fermer';

  @override
  String get deviceRevokedTitle => 'Cet appareil a été retiré du compte';

  @override
  String get deviceRevokedBody => 'Vous ne pouvez pas vous connecter depuis cet appareil tant qu\'un des appareils actifs du compte ne l\'approuve pas, depuis Paramètres → Compte et abonnement → « Autoriser le retour ».';

  @override
  String get backToLoginAction => 'Retour à la connexion';

  @override
  String otpEnterFullCode(Object digits) {
    return 'Entrez le code complet ($digits chiffres comme indiqué dans l\'e-mail)';
  }

  @override
  String get otpResentSuccess => 'Code de vérification renvoyé';

  @override
  String get back => 'Retour';

  @override
  String get emailVerificationTitle => 'Vérification de l\'e-mail';

  @override
  String otpSentToEmailShort(Object digits) {
    return 'Nous avons envoyé un code à $digits chiffres à votre e-mail';
  }

  @override
  String get enterVerificationCode => 'Entrez le code de vérification';

  @override
  String otpSentToEmailDetailed(Object digits, Object email) {
    return 'Un code à $digits chiffres a été envoyé à\n$email';
  }

  @override
  String get verifyAndCreateAccount => 'Vérifier et créer le compte';

  @override
  String resendInSeconds(Object seconds) {
    return 'Renvoyer dans $seconds secondes';
  }

  @override
  String get resendCode => 'Renvoyer le code';

  @override
  String get editData => 'Modifier les informations';

  @override
  String get emailRequired => 'L\'e-mail est requis';

  @override
  String get emailInvalidFormat => 'Format d\'e-mail invalide';

  @override
  String get enterYourEmail => 'Entrez votre e-mail';

  @override
  String get forgotPasswordSendCodeHint => 'Nous vous enverrons un code de vérification pour réinitialiser votre mot de passe';

  @override
  String get sendVerificationCode => 'Envoyer le code de vérification';

  @override
  String otpSentToEmailColon(Object digits, Object email) {
    return 'Un code à $digits chiffres a été envoyé à :\n$email';
  }

  @override
  String get continueAction => 'Continuer';

  @override
  String get editEmail => 'Modifier l\'e-mail';

  @override
  String get passwordUpdateSuccess => 'Mot de passe mis à jour avec succès';

  @override
  String get setNewPasswordTitle => 'Définir un nouveau mot de passe';

  @override
  String get newPasswordLabel => 'Nouveau mot de passe';

  @override
  String get enterNewPasswordHint => 'Entrez votre nouveau mot de passe';

  @override
  String get enterPasswordValidation => 'Entrez un mot de passe';

  @override
  String get minLength8Chars => 'Doit contenir au moins 8 caractères';

  @override
  String get confirmPasswordLabel => 'Confirmer le Mot de Passe';

  @override
  String get confirmPasswordHint => 'Ressaisissez votre mot de passe';

  @override
  String get passwordMismatch => 'Les mots de passe ne correspondent pas';

  @override
  String get passwordRequirementsTitle => 'Exigences du mot de passe (facultatif)';

  @override
  String get reqMinLength => 'Au moins 8 caractères';

  @override
  String get reqUppercase => 'Lettre majuscule (A-Z)';

  @override
  String get reqLowercase => 'Lettre minuscule (a-z)';

  @override
  String get reqDigit => 'Chiffre (0-9)';

  @override
  String get reqSpecialChar => 'Caractère spécial (!@#...)';

  @override
  String get onboardingChangeLaterHint => 'Vous pouvez modifier ces options plus tard depuis Paramètres → Fonctionnalités du magasin.';

  @override
  String get businessFeaturesWizardTitle => 'Fonctionnalités du magasin';

  @override
  String get quickAppSetupTitle => 'Configuration rapide de l\'application';

  @override
  String stepXofY(Object current, Object total) {
    return 'Étape $current sur $total';
  }

  @override
  String get previousAction => 'Précédent';

  @override
  String get nextAction => 'Suivant';

  @override
  String get practicalExamplesLabel => 'Exemples pratiques';

  @override
  String get onboardingStep1Question => 'Utilisez-vous des clients dans votre activité ?';

  @override
  String get onboardingStep1Paragraph1 => 'Une fois activé, vous obtenez le module client complet : une fiche pour chaque client, un historique d\'achats et un suivi rapide depuis la facture.';

  @override
  String get onboardingStep1Paragraph2 => 'Vous pouvez lier chaque vente à un client précis, ce qui facilite les rapports par la suite et uniformise l\'expérience pour les clients réguliers.';

  @override
  String get onboardingStep1Paragraph3 => 'Si vous faites une vente rapide au comptant sans nom, cela reste possible ; l\'activation n\'impose pas de choisir un client à chaque fois.';

  @override
  String get onboardingStep1Example1 => 'Exemple : un client régulier qui achète quotidiennement — vous enregistrez son nom et consultez rapidement ses dernières factures.';

  @override
  String get onboardingStep1Example2 => 'Exemple : en cas de dette ou de points de fidélité, ils apparaissent liés au même client au lieu d\'une recherche manuelle.';

  @override
  String get onboardingStep1SwitchLabel => 'Activer le module clients';

  @override
  String get onboardingStep2Question => 'Voulez-vous un programme de points de fidélité ?';

  @override
  String get onboardingStep2Paragraph1 => 'La fidélité accorde des points aux clients lors des achats, qu\'ils peuvent échanger selon les règles que vous définissez dans les paramètres.';

  @override
  String get onboardingStep2Paragraph2 => 'Le programme est lié aux profils clients ; plus les données clients sont claires, plus le suivi est facile.';

  @override
  String get onboardingStep2Paragraph3 => 'Vous pouvez activer la fonctionnalité maintenant et ajuster les taux d\'acquisition et d\'échange plus tard sans refaire cet assistant.';

  @override
  String get onboardingStep2Example1 => 'Exemple : chaque 10 000 IQD rapporte 10 points selon la règle choisie.';

  @override
  String get onboardingStep2Example2 => 'Exemple : un client ayant accumulé assez de points les échange contre une remise sur une facture ultérieure.';

  @override
  String get onboardingStep2SwitchLabel => 'Activer les points de fidélité';

  @override
  String get onboardingStep2Footnote => 'Nécessite l\'activation du module clients à l\'étape précédente ; s\'il n\'est pas activé, la fidélité ne fonctionnera pas tant que vous ne réactivez pas les clients.';

  @override
  String get onboardingStep3Question => 'Appliquez-vous une taxe lors de la vente ?';

  @override
  String get onboardingStep3Paragraph1 => 'Une fois activé, un champ de taxe clair apparaît sur la facture de vente afin qu\'elle soit calculée de façon cohérente avec le total.';

  @override
  String get onboardingStep3Paragraph2 => 'Convient aux commerces qui appliquent un taux de taxe connu sur les biens ou services.';

  @override
  String get onboardingStep3Paragraph3 => 'Vous pouvez ajuster le comportement détaillé depuis les paramètres du point de vente après cette configuration rapide.';

  @override
  String get onboardingStep3Example1 => 'Exemple : une facture de 100 000 IQD à laquelle un pourcentage de taxe déterminé est ajouté.';

  @override
  String get onboardingStep3Example2 => 'Exemple : l\'employé voit la taxe et le total final dans la même facture de vente.';

  @override
  String get onboardingStep3SwitchLabel => 'Afficher la taxe sur la facture de vente';

  @override
  String get onboardingStep4Question => 'Autorisez-vous une remise sur le total de la facture ?';

  @override
  String get onboardingStep4Paragraph1 => 'La remise globale est utile pour les offres saisonnières ou pour négocier le prix devant le client sans modifier le prix de chaque article.';

  @override
  String get onboardingStep4Paragraph2 => 'Le champ apparaît sur l\'écran de vente afin de compléter la facture sans complexité supplémentaire pour l\'employé.';

  @override
  String get onboardingStep4Paragraph3 => 'Vous pouvez la désactiver plus tard si vous décidez de travailler uniquement avec des prix fixes.';

  @override
  String get onboardingStep4Example1 => 'Exemple : vous accordez une remise globale de 5 000 IQD sur une grosse facture.';

  @override
  String get onboardingStep4Example2 => 'Exemple : une offre spéciale d\'un jour sans changer les prix de base des produits.';

  @override
  String get onboardingStep4SwitchLabel => 'Afficher la remise globale sur la facture';

  @override
  String get onboardingStep5Question => 'Vendez-vous à crédit (paiement différé) ?';

  @override
  String get onboardingStep5Paragraph1 => 'L\'activation ouvre le panneau des dettes et le suivi des montants dus par chaque client, avec des alertes et des plafonds ajustables.';

  @override
  String get onboardingStep5Paragraph2 => 'Convient aux commerçants qui font confiance à des clients connus et ont besoin d\'un historique clair des ventes à crédit.';

  @override
  String get onboardingStep5Paragraph3 => 'Cela n\'empêche pas les ventes au comptant ; cela ajoute seulement l\'option d\'enregistrer une vente comme dette lors de la sélection d\'un client avec les permissions appropriées.';

  @override
  String get onboardingStep5Example1 => 'Exemple : un client prend la marchandise aujourd\'hui et paie en fin de semaine.';

  @override
  String get onboardingStep5Example2 => 'Exemple : vous consultez le relevé d\'un client et voyez clairement le montant payé et le solde restant.';

  @override
  String get onboardingStep5SwitchLabel => 'Activer les ventes à crédit et les dettes';

  @override
  String get onboardingStep6Question => 'Vendez-vous à tempérament (paiement échelonné) ?';

  @override
  String get onboardingStep6Paragraph1 => 'Les plans d\'échelonnement permettent de diviser le prix d\'une facture en paiements programmés tout en suivant ce qu\'il reste dû par le client.';

  @override
  String get onboardingStep6Paragraph2 => 'Utile pour les biens à prix élevé ou les contrats de longue durée.';

  @override
  String get onboardingStep6Paragraph3 => 'Les détails précis de l\'échéancier sont gérés depuis les modules dédiés une fois cette configuration terminée.';

  @override
  String get onboardingStep6Example1 => 'Exemple : un appareil d\'une valeur de 600 000 IQD payé en 6 mensualités.';

  @override
  String get onboardingStep6Example2 => 'Exemple : vous voyez les paiements à venir et en retard de chaque client au même endroit.';

  @override
  String get onboardingStep6SwitchLabel => 'Activer les ventes à tempérament';

  @override
  String get onboardingStep7Question => 'Vendez-vous au poids (kilo, gramme, etc.) ?';

  @override
  String get onboardingStep7Paragraph1 => 'L\'activation prépare l\'interface de vente et les codes-barres pour prendre en charge les poids et quantités décimales lorsque nécessaire.';

  @override
  String get onboardingStep7Paragraph2 => 'Convient à l\'alimentation, à la quincaillerie, ou à toute activité reposant sur une balance.';

  @override
  String get onboardingStep7Paragraph3 => 'Vous pouvez configurer les formats de codes-barres au poids depuis les paramètres avancés après cet assistant.';

  @override
  String get onboardingStep7Example1 => 'Exemple : vendre 1,250 kg d\'un produit plutôt qu\'une seule pièce.';

  @override
  String get onboardingStep7Example2 => 'Exemple : lire un code-barres de balance contenant automatiquement le poids et le prix du produit.';

  @override
  String get onboardingStep7SwitchLabel => 'Activer la vente au poids';

  @override
  String get onboardingStep8Question => 'Vendez-vous des vêtements (couleurs et tailles) ?';

  @override
  String get onboardingStep8Paragraph1 => 'L\'activation prépare les écrans de produits et de vente pour prendre en charge les variantes d\'articles (couleurs et tailles différentes du même modèle).';

  @override
  String get onboardingStep8Paragraph2 => 'Facilite le suivi du stock de chaque couleur ou taille séparément et affiche une fenêtre de sélection rapide lors de la vente.';

  @override
  String get onboardingStep8Example1 => 'Exemple : une chemise disponible en bleu et noir, en tailles S, M et L.';

  @override
  String get onboardingStep8Example2 => 'Exemple : sélectionner un vêtement ouvre une fenêtre rapide pour choisir la taille et la couleur disponibles en stock.';

  @override
  String get onboardingStep8SwitchLabel => 'Activer le module vêtements et tailles';

  @override
  String get onboardingStep9Question => 'Proposez-vous des services spécifiques (réparation, atelier, etc.) ?';

  @override
  String get onboardingStep9Paragraph1 => 'L\'activation affiche le module complet de services et maintenance : tickets de travail, demandes d\'intervention, et catalogue des services et tarifs.';

  @override
  String get onboardingStep9Paragraph2 => 'Utile pour les ateliers, centres de service, et toute activité offrant des services aux clients en plus de la vente de marchandises.';

  @override
  String get onboardingStep9Example1 => 'Exemple : ouvrir un ticket de maintenance pour un ordinateur ou une voiture et définir le statut du travail.';

  @override
  String get onboardingStep9Example2 => 'Exemple : ajouter un service d\'installation ou de maintenance rapide à une facture de vente.';

  @override
  String get onboardingStep9SwitchLabel => 'Activer les services et tickets de maintenance';

  @override
  String get invoicesLabel => 'Factures';

  @override
  String get invoicesListLabel => 'Liste des factures';

  @override
  String get newSaleLabel => 'Nouvelle vente';

  @override
  String get parkedSalesLabel => 'Ventes en attente';

  @override
  String get posSettingsLabel => 'Paramètres du point de vente';

  @override
  String get customersLabel => 'Clients';

  @override
  String get customersManageLabel => 'Gérer les clients';

  @override
  String get addNewCustomerLabel => 'Ajouter un nouveau client';

  @override
  String get addCustomerBreadcrumb => 'Ajouter un client';

  @override
  String get contactListLabel => 'Liste de contacts';

  @override
  String get customerLoyaltySettingsLabel => 'Paramètres client (fidélité)';

  @override
  String get customerLoyaltyLabel => 'Fidélité client';

  @override
  String get loyaltyPointsSettingsLabel => 'Paramètres des points et échanges';

  @override
  String get loyaltyLedgerLabel => 'Historique des points';

  @override
  String get installmentsLabel => 'Échelonnement';

  @override
  String get installmentPlansLabel => 'Plans d\'échelonnement';

  @override
  String get installmentSettingsLabel => 'Paramètres d\'échelonnement';

  @override
  String get debtsLabel => 'Dettes';

  @override
  String get debtsPanelLabel => 'Panneau des dettes (crédit)';

  @override
  String get debtSettingsLabel => 'Paramètres des dettes';

  @override
  String get inventoryLabel => 'Stock';

  @override
  String get productListLabel => 'Liste des produits';

  @override
  String get addNewProductLabel => 'Ajouter un nouveau produit';

  @override
  String get updateExistingProductLabel => 'Mettre à jour un produit existant';

  @override
  String get printBarcodeLabelsLabel => 'Imprimer des étiquettes code-barres';

  @override
  String get inventoryMovementsLabel => 'Mouvements de stock';

  @override
  String get warehousesLabel => 'Entrepôts';

  @override
  String get stocktakingLabel => 'Inventaire périodique';

  @override
  String get purchaseOrdersLabel => 'Bons de commande';

  @override
  String get stockAnalyticsLabel => 'Analyses de stock';

  @override
  String get inventorySettingsLabel => 'Paramètres du stock';

  @override
  String get servicesAndMaintenanceLabel => 'Services et maintenance';

  @override
  String get servicesAndMaintenancePanelLabel => 'Panneau des services et maintenance';

  @override
  String get addTechnicalServiceLabel => 'Ajouter un service technique';

  @override
  String get maintenanceRequestsLabel => 'Demandes de maintenance et tickets de travail';

  @override
  String get cashRegisterLabel => 'Caisse';

  @override
  String get expensesLabel => 'Dépenses';

  @override
  String get reportsLabel => 'Rapports';

  @override
  String get usersLabel => 'Utilisateurs';

  @override
  String get manageUsersLabel => 'Gérer les utilisateurs';

  @override
  String get staffShiftsWeekLabel => 'Équipes du personnel (semaine)';

  @override
  String get staffIdentitiesLabel => 'Identités du personnel';

  @override
  String get printingLabel => 'Impression';

  @override
  String get homeLabel => 'Accueil';

  @override
  String get defaultUserFallback => 'Utilisateur';

  @override
  String get logoutLabel => 'Se déconnecter';

  @override
  String get logoutConfirmMessage => 'Voulez-vous vraiment vous déconnecter ?';

  @override
  String get confirmAction => 'Confirmer';

  @override
  String searchFailedSnackbar(Object error) {
    return 'Impossible de terminer la recherche : $error';
  }

  @override
  String get addProductLabel => 'Ajouter un produit';

  @override
  String shiftTooltipWithName(Object name) {
    return 'Équipe : $name — fermer';
  }

  @override
  String get closeShiftTooltip => 'Fermer l\'équipe';

  @override
  String get syncFailedTooltip => 'Synchronisation — dernière tentative échouée';

  @override
  String get cloudSyncTooltip => 'Synchronisation cloud';

  @override
  String get syncStartingSnackbar => 'Démarrage de la synchronisation…';

  @override
  String get notificationsTooltip => 'Notifications';

  @override
  String get settingsLabel => 'Paramètres';

  @override
  String get copyLabel => 'Copier';

  @override
  String get copiedSnackbar => 'Copié';

  @override
  String get userInfoTitle => 'Informations utilisateur';

  @override
  String get displayNameFieldLabel => 'Nom affiché :';

  @override
  String get usernameFieldLabel => 'Nom d\'utilisateur :';

  @override
  String get roleFieldLabel => 'Rôle :';

  @override
  String get emailFieldLabel => 'E-mail :';

  @override
  String get closeAction => 'Fermer';

  @override
  String get barcodeScanTooltip => 'Scanner un code-barres (caméra sur mobile, ou fenêtre du lecteur sur ordinateur)';

  @override
  String get hideKeyboardTooltip => 'Masquer le clavier';

  @override
  String get keyboardDragPinHint => 'Clavier arabe / anglais — faites glisser par la poignée ou épinglez-le';

  @override
  String get clearSearchTooltip => 'Effacer la recherche';

  @override
  String get searchToolsTooltip => 'Outils de recherche';

  @override
  String get showKeyboardTooltip => 'Afficher le clavier (arabe / anglais)';

  @override
  String get quickSearchHint => 'Recherche rapide : modules, produits, clients…';

  @override
  String get fullSearchHint => 'Recherche : modules, produits, clients, personnel, code-barres…';

  @override
  String get collapseMenuTooltip => 'Réduire le menu';

  @override
  String get expandMenuTooltip => 'Développer le menu';

  @override
  String get restrictedModeTooltip => 'Non disponible en mode restreint';

  @override
  String get paymentTypeCash => 'Comptant';

  @override
  String get paymentTypeCredit => 'Crédit';

  @override
  String get paymentTypeInstallment => 'Échelonné';

  @override
  String get paymentTypeDelivery => 'Livraison';

  @override
  String get paymentTypeDebtCollection => 'Recouvrement de dette';

  @override
  String get paymentTypeInstallmentCollection => 'Paiement d\'échéance';

  @override
  String get paymentTypeSupplierPayment => 'Paiement fournisseur';

  @override
  String noInvoiceWithNumber(Object id) {
    return 'Aucune facture avec le numéro $id';
  }

  @override
  String get invoiceAlreadyReturned => 'Cette facture est déjà enregistrée comme retournée';

  @override
  String get invoiceNotOpenableAsReturn => 'Ce bon ne peut pas être ouvert comme retour de vente — annulez le paiement depuis l\'écran fournisseur ou la gestion des échelonnements selon son type.';

  @override
  String salesInvoiceNumber(Object id) {
    return 'Facture de vente #$id';
  }

  @override
  String get emptyPlaceholder => '(vide)';

  @override
  String returnInvoiceDialogBody(Object customer, Object paymentType, Object total) {
    return 'Client : $customer\nPaiement : $paymentType\nTotal : $total\n\nOuvrir l\'écran de retour ? Vous pouvez réduire les quantités ou supprimer des lignes pour un retour partiel uniquement.';
  }

  @override
  String get returnLabel => 'Retour';

  @override
  String returnNumber(Object id) {
    return 'Retour #$id';
  }

  @override
  String get scanQrBarcodeTitle => 'Scanner QR / code-barres';

  @override
  String get pointsLedgerShortLabel => 'Historique des points';

  @override
  String get staffShiftsLabel => 'Équipes du personnel';

  @override
  String get shiftStaffFallback => 'Personnel de service';

  @override
  String get itemsLabel => 'Articles';

  @override
  String noResultsFor(Object query) {
    return 'Aucun résultat pour « $query »';
  }

  @override
  String get modulesLabel => 'Modules';

  @override
  String get openModuleLabel => 'Ouvrir le module';

  @override
  String get productsLabel => 'Produits';

  @override
  String sellPriceIqd(Object price) {
    return 'Vente $price IQD';
  }

  @override
  String get viewCustomersLabel => 'Voir les clients';

  @override
  String get staffLabel => 'Personnel';

  @override
  String get viewStaffLabel => 'Voir le personnel';

  @override
  String get technicalServiceLabel => 'Service technique';

  @override
  String get notStockTracked => 'Stock non suivi';

  @override
  String get availableUnknown => 'Disponible : —';

  @override
  String get availableZero => 'Disponible : 0';

  @override
  String availableQty(Object qty) {
    return 'Disponible : $qty';
  }

  @override
  String negativeStockWarning(Object qty, Object soldOver) {
    return 'Solde négatif $qty — survente de $soldOver par rapport au dernier solde';
  }

  @override
  String get chooseFromListBelow => 'Choisissez dans la liste ci-dessous';

  @override
  String get viewAllLabel => 'Voir tout';

  @override
  String get untitledLabel => 'Sans titre';

  @override
  String get deleteParkedSaleTitle => 'Supprimer la vente en attente ?';

  @override
  String deleteParkedSaleBody(Object label) {
    return '« $label » sera définitivement supprimée de cet appareil.';
  }

  @override
  String get deleteAction => 'Supprimer';

  @override
  String get deletedSnackbar => 'Supprimé';

  @override
  String get parkedSalesScreenTitle => 'Ventes en attente';

  @override
  String get noParkedSalesTitle => 'Aucune vente en attente';

  @override
  String get noParkedSalesHint => 'Depuis l\'écran de vente, appuyez sur « Mettre en attente » pour enregistrer le travail en cours et servir un autre client.';

  @override
  String parkedSaleSummaryLine(Object count, Object total) {
    return '$count articles · ≈ $total IQD';
  }

  @override
  String lastUpdatedLabel(Object date) {
    return 'Dernière mise à jour : $date';
  }

  @override
  String get resumeSaleTooltip => 'Reprendre la vente';

  @override
  String get allLabel => 'Tout';

  @override
  String get paidStatus => 'Payée';

  @override
  String get unpaidStatus => 'Impayée';

  @override
  String get cannotShowInvoiceNoId => 'Impossible d\'afficher une facture sans numéro';

  @override
  String get invoiceNotFound => 'Facture introuvable';

  @override
  String get flatViewOption => 'Vue simple (sans regroupement par équipe)';

  @override
  String get groupByShiftOption => 'Regrouper par équipe';

  @override
  String get advancedFilterLabel => 'Filtre avancé';

  @override
  String get shiftsCalendarLabel => 'Calendrier des équipes';

  @override
  String get moreLabel => 'Plus';

  @override
  String get parkedInvoicesShortLabel => 'Factures en attente';

  @override
  String get saleLabel => 'Vente';

  @override
  String get totalLabel => 'Total';

  @override
  String get sortLabel => 'Trier';

  @override
  String get sortNewestFirst => 'Plus récent d\'abord';

  @override
  String get sortOldestFirst => 'Plus ancien d\'abord';

  @override
  String get sortHighestAmount => 'Montant le plus élevé';

  @override
  String get sortLowestAmount => 'Montant le plus bas';

  @override
  String get searchInvoicesHint => 'Rechercher par nom du client, numéro de facture ou téléphone du client...';

  @override
  String shiftNumberLabel(Object id) {
    return 'Équipe #$id';
  }

  @override
  String noShiftGroupLabel(Object count) {
    return 'Sans équipe — anciennes factures ou hors session d\'équipe ($count)';
  }

  @override
  String shiftLoadFailedLabel(Object count, Object id) {
    return 'Équipe #$id — impossible de charger les détails de l\'équipe ($count factures)';
  }

  @override
  String get openStatus => 'Ouverte';

  @override
  String shiftWithNameLabel(Object id, Object name) {
    return 'Équipe #$id — $name';
  }

  @override
  String invoiceCountLabel(Object count) {
    return '$count factures';
  }

  @override
  String totalIqd(Object amount) {
    return '$amount IQD';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count articles · remise $discount IQD';
  }

  @override
  String shiftColonLabel(Object name) {
    return 'Équipe : $name';
  }

  @override
  String get createReturnInvoiceTooltip => 'Créer une facture de retour pour cette facture';

  @override
  String get returnActionLabel => 'Retour';

  @override
  String get noInvoicesTitle => 'Aucune facture';

  @override
  String get addFirstInvoiceCta => 'Ajoutez votre première facture maintenant';

  @override
  String get sortOptionsTitle => 'Options de tri';

  @override
  String get applyAction => 'Appliquer';

  @override
  String get loginTabLabel => 'Connexion';

  @override
  String get signupTabLabel => 'S\'inscrire';

  @override
  String get usernameOrEmailLabel => 'Nom d\'utilisateur ou Email';

  @override
  String get enterUsernameOrEmail => 'Entrez votre nom d\'utilisateur ou email';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get enterPassword => 'Entrez votre mot de passe';

  @override
  String get storeNameLabel => 'Nom du Magasin/Entreprise';

  @override
  String get enterStoreName => 'Entrez le nom de votre magasin ou entreprise';

  @override
  String get nameLabel => 'Nom';

  @override
  String get enterName => 'Entrez votre nom';

  @override
  String get enterEmail => 'Entrez votre email';

  @override
  String get phoneLabel => 'Numéro de Téléphone';

  @override
  String get enterPhone => 'Entrez votre numéro de téléphone';

  @override
  String get countryCodeLabel => 'Indicatif Pays';

  @override
  String get selectCountryCode => 'Sélectionnez l\'indicatif du pays';

  @override
  String get confirmPassword => 'Confirmez votre mot de passe';

  @override
  String get showPassword => 'Afficher le mot de passe';

  @override
  String get hidePassword => 'Masquer le mot de passe';

  @override
  String get clearField => 'Effacer';

  @override
  String get rememberMe => 'Se souvenir de moi';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get dontHaveAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get loginButton => 'Connexion';

  @override
  String get signupButton => 'S\'inscrire';

  @override
  String get signupButton2 => 'Créer un Compte';

  @override
  String get termsAndConditions => 'Conditions d\'Utilisation';

  @override
  String get privacyPolicy => 'Politique de Confidentialité';

  @override
  String get agreeToTerms => 'J\'accepte les Conditions d\'Utilisation';

  @override
  String get agreeToTermsRequired => 'Vous devez accepter les conditions pour continuer';

  @override
  String get passwordRecovery => 'Récupération de Mot de Passe';

  @override
  String get enterEmailForRecovery => 'Entrez votre email pour récupérer votre mot de passe';

  @override
  String get captchaLabel => 'Code de Vérification';

  @override
  String enterCaptcha(Object firstNumber, Object secondNumber) {
    return 'Entrez le résultat : $firstNumber + $secondNumber = ?';
  }

  @override
  String get invalidCaptcha => 'Code de vérification incorrect';

  @override
  String get invalidCredentials => 'Nom d\'utilisateur ou mot de passe invalide';

  @override
  String get accountCreated => 'Compte créé avec succès';

  @override
  String get loginSuccessful => 'Connecté avec succès';

  @override
  String get passwordResetSent => 'Le code de réinitialisation du mot de passe a été envoyé à votre email';

  @override
  String get passwordResetSuccess => 'Mot de passe réinitialisé avec succès';

  @override
  String get accountAlreadyExists => 'Un compte avec cet email existe déjà';

  @override
  String get weekDayMonday => 'Lundi';

  @override
  String get weekDayTuesday => 'Mardi';

  @override
  String get weekDayWednesday => 'Mercredi';

  @override
  String get weekDayThursday => 'Jeudi';

  @override
  String get weekDayFriday => 'Vendredi';

  @override
  String get weekDaySaturday => 'Samedi';

  @override
  String get weekDaySunday => 'Dimanche';

  @override
  String get iraq => 'Irak';

  @override
  String get saudiArabia => 'Arabie Saoudite';

  @override
  String get uae => 'Émirats Arabes Unis';

  @override
  String get kuwait => 'Koweït';

  @override
  String get syria => 'Syrie';

  @override
  String get jordan => 'Jordanie';

  @override
  String get lebanon => 'Liban';

  @override
  String get checkingLicense => 'Vérification de la licence…';

  @override
  String get storeManagementSystem => 'Système de gestion du magasin';

  @override
  String get systemInitializing => 'Initialisation du système...';

  @override
  String get maintenance => 'Maintenance';

  @override
  String get ok => 'OK';

  @override
  String get updateRequired => 'Mise à jour requise';

  @override
  String get downloadUpdate => 'Télécharger la mise à jour';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get later => 'Plus tard';

  @override
  String get download => 'Télécharger';

  @override
  String get openLink => 'Ouvrir le lien';

  @override
  String get done => 'Terminé';

  @override
  String get businessManagementSystem => 'Système de gestion commerciale';

  @override
  String get salesAndInvoices => 'Ventes et factures';

  @override
  String get accountsAndReports => 'Comptes et rapports';

  @override
  String get inventoryAndWarehouses => 'Stock et entrepôts';

  @override
  String get createNewAccountTitle => 'Créer un nouveau compte';

  @override
  String get loginTitle => 'Connexion';

  @override
  String get signupSubtitle => 'Vous recevrez un code de vérification par e-mail pour confirmer votre compte';

  @override
  String get loginSubtitle => 'Entrez votre e-mail et mot de passe pour vous connecter';

  @override
  String get haveAccountBackToLogin => 'Déjà un compte ? Retour à la connexion';

  @override
  String get noAccountCreateNew => 'Pas encore de compte ? Créer un nouveau compte';

  @override
  String get requiredField => 'Ce champ est obligatoire';

  @override
  String get minLength3Chars => 'Doit contenir au moins 3 caractères';

  @override
  String get nameRequired => 'Le nom est requis';

  @override
  String get nameRequiredMin3 => 'Le nom est requis (au moins 3 caractères)';

  @override
  String get emailRequiredShort => 'L\'e-mail est requis';

  @override
  String get iraqMobileInvalid => 'Mobile irakien : 11 chiffres commençant par 07 (ex. : 07701234567)';

  @override
  String get passwordRequired => 'Le mot de passe est requis';

  @override
  String get passwordDoesNotMeetRequirements => 'Le mot de passe ne respecte pas les exigences';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get enterPasswordAgain => 'Veuillez ressaisir votre mot de passe';

  @override
  String get iraqDialTooltip => '+964 Irak — d\'autres codes pays seront disponibles plus tard';

  @override
  String get welcomeToNaBoo => 'Bienvenue sur NaBoo';

  @override
  String welcomeBackGreeting(Object name) {
    return 'Bon retour, $name';
  }

  @override
  String get todaysBusinessSummary => 'Voici le résumé des affaires du jour';

  @override
  String get userFallback => 'Utilisateur';

  @override
  String get failedToLoadChartData => 'Échec du chargement des données graphiques.';

  @override
  String get lastWeek => 'Dernière semaine';

  @override
  String get lastMonth => 'Dernier mois';

  @override
  String get incomeLabel => 'Revenu :';

  @override
  String get expenseLabel => 'Dépense :';

  @override
  String get salesPerformance => 'Performance des ventes';

  @override
  String get totalLabelColon => 'Total :';

  @override
  String get expensesVsIncome => 'Dépenses vs Revenus';

  @override
  String get incomeLegend => 'Revenus';

  @override
  String get expensesLegend => 'Dépenses';

  @override
  String get changePeriod => 'Changer la période';

  @override
  String get pinnedProductsHint => 'Produits épinglés — appuyez pour une vente rapide';

  @override
  String get byPiece => 'Par pièce';

  @override
  String get byWeight => 'Au poids';

  @override
  String get addGroup => 'Ajouter un groupe';

  @override
  String get remainingColon => 'Reste :';

  @override
  String get notTracked => 'Non suivi';

  @override
  String get technicalService => 'Service technique';

  @override
  String get groupByCategory => 'Grouper par catégorie';

  @override
  String get groupByCategoryDesc => 'Filtrer les produits épinglés par une seule catégorie';

  @override
  String get groupByBrand => 'Grouper par marque';

  @override
  String get groupByBrandDesc => 'Filtrer les produits épinglés par une seule marque';

  @override
  String get noCategoriesYet => 'Aucune catégorie pour le moment';

  @override
  String get chooseCategory => 'Choisir une catégorie';

  @override
  String get categoryFallback => 'Catégorie';

  @override
  String get noBrandsYet => 'Aucune marque pour le moment';

  @override
  String get chooseBrand => 'Choisir une marque';

  @override
  String get brandFallback => 'Marque';

  @override
  String get groupAlreadyExists => 'Ce groupe existe déjà';

  @override
  String get noMatchingActivityYet => 'Aucune activité correspondante pour le moment';

  @override
  String get noActivityHint => 'Enregistrez des ventes, mouvements de caisse ou toute activité dans l\'application pour les voir ici chronologiquement.';

  @override
  String failedToLoadActivity(Object error) {
    return 'Échec du chargement de l\'activité : $error';
  }

  @override
  String get recentActivityOverview => 'Aperçu des activités récentes';

  @override
  String get invoicesLabelShort => 'Factures';

  @override
  String get cashLabelShort => 'Caisse';

  @override
  String get otherLabelShort => 'Autre';

  @override
  String get openInvoicesList => 'Ouvrir la liste des factures';

  @override
  String get openCashRegister => 'Caisse';

  @override
  String get cashRegisterCard => 'Caisse';

  @override
  String get cashRegisterHint => 'Solde agrégé dans le registre';

  @override
  String get shiftLabel => 'Équipe';

  @override
  String get newSaleCard => 'Nouvelle vente';

  @override
  String get newSaleSubtitle => 'Facture rapide';

  @override
  String get newSaleHint => 'Raccourci pour la caisse et la vente';

  @override
  String get inventoryCard => 'Stock';

  @override
  String inventorySubtitle(Object count) {
    return '$count articles actifs';
  }

  @override
  String inventoryAlertLowStock(Object count) {
    return 'Alerte : $count avec stock bas';
  }

  @override
  String get inventoryNoAlerts => 'Pas d\'alertes de stock';

  @override
  String get completedOrdersCard => 'Commandes terminées';

  @override
  String completedOrdersSubtitle(Object count) {
    return '$count commandes';
  }

  @override
  String get completedOrdersHint => 'Bénéfice de l\'équipe précédente';

  @override
  String get parkedCard => 'En attente';

  @override
  String parkedSubtitle(Object count) {
    return '$count factures';
  }

  @override
  String get parkedHint => 'Temporairement en attente';

  @override
  String get reportsCard => 'Rapports';

  @override
  String get reportsSubtitle => 'Tableau de bord';

  @override
  String get reportsHint => 'Indicateurs de la période';

  @override
  String get dragToReorderCards => 'Glissez les éléments vers le haut ou le bas pour réordonner. L\'ordre est sauvegardé sur cet appareil.';

  @override
  String get saveOrder => 'Enregistrer l\'ordre';

  @override
  String get reorderCards => 'Réordonner les cartes';

  @override
  String get refreshNumbers => 'Actualiser les chiffres';

  @override
  String get glanceOverview => 'Aperçu rapide';

  @override
  String get dragHeightHint => 'Glissez vers le haut ou le bas pour modifier la hauteur de la liste des produits';

  @override
  String get pinnedProductsHeightHandle => 'Poignée pour modifier la hauteur de la liste des produits épinglés';

  @override
  String filterByCategoryColon(Object name) {
    return 'Filtrer par catégorie : $name';
  }

  @override
  String filterByBrandColon(Object name) {
    return 'Filtrer par marque : $name';
  }

  @override
  String get accountLabel => 'Compte';

  @override
  String get lightModeLabel => 'Mode clair';

  @override
  String get darkModeLabel => 'Mode sombre';

  @override
  String get calculatorLabel => 'Calculatrice';

  @override
  String get settingsLabelMenu => 'Paramètres';

  @override
  String get showMacPanel => 'Afficher le panneau Mac';

  @override
  String get hideMacPanel => 'Masquer le panneau Mac';

  @override
  String get customizeModules => 'Personnaliser les modules';

  @override
  String get editDone => 'Terminer l\'édition';

  @override
  String get breadcrumbNavHint => 'Chemin de navigation — appuyez sur une étape pour revenir';

  @override
  String currentPageLabel(Object title) {
    return 'Page actuelle : $title';
  }

  @override
  String get restrictedModeBanner => 'Mode restreint — connectez-vous à Internet pour vérifier';

  @override
  String get retryButton => 'Réessayer';

  @override
  String get timeTamperTitle => 'تعارض في إعدادات الوقت';

  @override
  String get licenseSuspendedTitle => 'الترخيص موقوف';

  @override
  String get deviceLimitExceededTitle => 'تجاوز حد الأجهزة';

  @override
  String get subscriptionExpiredTitle => 'انتهى الاشتراك';

  @override
  String get timeTamperMessage => 'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.';

  @override
  String get accountSuspendedMessage => 'تم إيقاف حسابك. تواصل مع الدعم الفني.';

  @override
  String get subscriptionExpiredMessage => 'انتهى اشتراكك. جدّد للمتابعة.';

  @override
  String get enterLicenseKeyError => 'أدخل مفتاح الترخيص';

  @override
  String get yourCurrentPlan => 'خطتك الحالية';

  @override
  String get registeredDevices => 'الأجهزة المسجّلة';

  @override
  String get subscriptionExpires => 'انتهاء الاشتراك';

  @override
  String get trialExpires => 'انتهاء التجربة';

  @override
  String get upgradePlanToAddDevices => 'ترقية الخطة لإضافة أجهزة';

  @override
  String get renewSubscription => 'تجديد الاشتراك';

  @override
  String get comparePlans => 'مقارنة خطط الاشتراك';

  @override
  String get enterNewKey => 'إدخال مفتاح جديد';

  @override
  String get activateButton => 'تفعيل';

  @override
  String get reVerifyButton => 'إعادة التحقق';

  @override
  String get useAnotherKey => 'استخدام مفتاح آخر';

  @override
  String get allRightsReserved => 'NaBoo v2.0 — جميع الحقوق محفوظة';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get offlineMessage => 'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.';

  @override
  String get enterWithoutConnection => 'الدخول بدون اتصال';

  @override
  String get activateLicenseTitle => 'تفعيل الترخيص';

  @override
  String get enterLicenseKeyToContinue => 'أدخل مفتاح الترخيص للمتابعة';

  @override
  String get contactTeamForLicense => 'للحصول على مفتاح ترخيص، تواصل مع فريق NaBoo.';

  @override
  String get subscriptionPlansTitle => 'خطط الاشتراك';

  @override
  String get chooseRightPlan => 'اختر الخطة المناسبة لنشاطك';

  @override
  String get plansDescriptionJwt => 'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.';

  @override
  String get plansDescriptionLegacy => 'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.';

  @override
  String get howToSubscribe => 'كيفية الاشتراك';

  @override
  String get subscribeStepsJwt => '١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز';

  @override
  String get subscribeStepsLegacy => '١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»';

  @override
  String get whatsappOrPhone => 'واتساب / هاتف';

  @override
  String get emailContact => 'البريد الإلكتروني';

  @override
  String get continueButton => 'متابعة';

  @override
  String get pasteTokenFirst => 'الصق رمز الترخيص أولاً';

  @override
  String get activateTokenTitle => 'تفعيل رمز الترخيص';

  @override
  String get activateTokenDescription => 'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.';

  @override
  String get pasteTokenHint => 'الصق رمز التفعيل هنا';

  @override
  String get activateTokenButton => 'تفعيل الرمز';

  @override
  String get pasteKeyOrTokenFirst => 'الصق مفتاح الترخيص أو رمز التفعيل أولاً';

  @override
  String get activateKeyTitle => 'تفعيل المفتاح';

  @override
  String get activateKeyDescription => 'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.';

  @override
  String get pasteKeyHint => 'الصق مفتاح الترخيص أو رمز التفعيل';

  @override
  String get activateKeyButton => 'تفعيل المفتاح';

  @override
  String get freeLabel => 'مجاناً';

  @override
  String get trialDaysLabel => '15 يوماً';

  @override
  String get currencyLabel => 'د.ع';

  @override
  String get perMonthLabel => 'شهرياً';

  @override
  String get yourCurrentTrial => 'تجربتك الحالية';

  @override
  String get yourCurrentPlanCard => 'خطتك الحالية';

  @override
  String get trialAutoStartsMessage => 'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.';

  @override
  String get jwtPlanDescription => 'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.';

  @override
  String get legacyPlanDescription => 'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.';

  @override
  String get mostPopular => 'الأكثر طلباً';

  @override
  String get numberCopied => 'تم نسخ الرقم';

  @override
  String get emailCopied => 'تم نسخ البريد';

  @override
  String get copyTooltip => 'نسخ';

  @override
  String get inventorySettingsTitle => 'Paramètres d\'inventaire';

  @override
  String get subSettingsTitle => 'Sous-paramètres';

  @override
  String get subSettingsSubtitle => 'Paramètres détaillés pour chaque aspect de l\'inventaire';

  @override
  String get productAddSettingsTitle => 'Paramètres d\'ajout de produit';

  @override
  String get productAddSettingsDesc => 'Champs par défaut, entrepôt par défaut, champs obligatoires';

  @override
  String get barcodeSettingsTitle => 'Paramètres de code-barres';

  @override
  String get barcodeSettingsDesc => 'Standard de code-barres, champs intégrés dans le code-barres';

  @override
  String get categoriesTitle => 'Catégories';

  @override
  String get categoriesDesc => 'Ajouter, modifier et supprimer des catégories de produits';

  @override
  String get brandsTitle => 'Marques';

  @override
  String get brandsDesc => 'Ajouter, modifier et supprimer des marques';

  @override
  String get unitTemplatesTitle => 'Modèles d\'unités';

  @override
  String get unitTemplatesDesc => 'Définir les unités de vente et d\'achat et les facteurs de conversion';
}

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
  String get invoiceSettingsSubtitle =>
      'Numéro de départ, pied de page, taxe, remise';

  @override
  String get businessFeatures => 'Fonctionnalités Commerciales';

  @override
  String get businessFeaturesSubtitle =>
      'Clients, fidélité, taxe, remise, dette, paiement échelonné, poids, vêtements et services';

  @override
  String get customizeDashboard => 'Personnaliser le Tableau de Bord';

  @override
  String get customizeDashboardSubtitle =>
      'Afficher ou masquer les sections du tableau de bord et réorganiser par glisser-déposer';

  @override
  String get appColorsIdentity => 'Couleurs & Identité de l\'App';

  @override
  String get appColorsIdentitySubtitle =>
      'Schémas prédéfinis, personnalisés et coins des cartes — s\'applique à tous les écrans';

  @override
  String get compactSnackNotifications =>
      'Forme des Notifications (Toute l\'App)';

  @override
  String get compactSnackNotificationsSubtitleOn =>
      'Barres étroites et flottantes sur tous les écrans — depuis les paramètres globaux ici, pas depuis les paramètres du POS';

  @override
  String get compactSnackNotificationsSubtitleOff =>
      'Mode classique: barre de notification fixe en bas de l\'écran sur toutes les pages';

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
  String get floatingWindowSubtitleOn =>
      'Plusieurs fenêtres peuvent être ouvertes ensemble; la tuile jaune de minimisation se place en bas de l\'écran avec icône pour chaque page — désactiver pour ouvrir dans le contenu';

  @override
  String get floatingWindowSubtitleOff =>
      'Ces écrans s\'ouvrent dans le contenu. Activez pour utiliser les fenêtres flottantes et les tuiles';

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
  String get subscriptionPlanSubtitle =>
      'Compte, appareils et synchronisation automatique';

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
  String get appDescription =>
      'Application intégrée pour la gestion des ventes, stocks et comptabilité.';

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
  String get noExpirationDate =>
      'Abonnement actif sans date d\'expiration spécifique dans le cloud.';

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
  String get autoSyncDescription =>
      'Une copie complète de la base de données est téléchargée depuis chaque appareil; la plus récente du cloud est importée sur les autres appareils après \'Synchroniser\' ou dans ~1 minute. Pas en temps réel par entrée. Le fichier SQL de synchronisation doit être exécuté dans Supabase, et l\'internet doit être activé.';

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
  String get notificationsBuildFromDb =>
      'Les notifications sont construites depuis la base de données lors de l\'ouverture du panneau de notification depuis l\'écran d\'accueil.';

  @override
  String get lowStockAlert => 'Alerte de Stock Faible';

  @override
  String get lowStockAlertSubtitle =>
      'Produits au niveau minimum ou en rupture de stock (avec suivi de stock)';

  @override
  String get negativeStockSaleAlert => 'Alerte de Vente avec Stock Négatif';

  @override
  String get negativeStockSaleAlertSubtitle =>
      'Après sauvegarde de la facture de vente: numéro de facture, vendeur, client, articles et quantités avant/après le solde';

  @override
  String get financedSaleAlert => 'Alerte de Vente Crédit ou Échelonnée';

  @override
  String get financedSaleAlertSubtitle =>
      'Lors de la sauvegarde d\'une facture crédit ou échelonnée depuis l\'écran POS: numéro de facture, vendeur, client, montants, lignes, et plan d\'échelonnement si existant';

  @override
  String get expiryAlert => 'Alerte d\'Expiration des Produits';

  @override
  String get expiryAlertSubtitle =>
      'Expirés, ou dans la \'fenêtre d\'alerte\' avant la date (par produit ou par défaut ci-dessous)';

  @override
  String get defaultExpiryDaysLabel =>
      'Jours par défaut avant la date d\'expiration pour afficher une alerte \'proche de l\'expiration\' (utilisé lors de l\'ajout d\'un produit si non défini pour l\'article, 1-365).';

  @override
  String get defaultExpiryDaysHint => 'ex: 14';

  @override
  String get defaultExpiryDaysInputLabel => 'Jours d\'Alerte par Défaut';

  @override
  String get saveDefaultDays => 'Enregistrer le Nombre par Défaut';

  @override
  String get installmentAlert => 'Paiements Échelonnés';

  @override
  String get installmentAlertSubtitle =>
      'En retard ou dus dans les 14 prochains jours';

  @override
  String get customerDebtAlert => 'Dettes des Clients (Crédit)';

  @override
  String get customerDebtAlertSubtitle =>
      'Solde crédit client, selon les paramètres de dette: âge de la facture, plafond total par client, plafond par facture';

  @override
  String get returnsAlert => 'Enregistrement des Retours';

  @override
  String get returnsAlertSubtitle => 'Derniers retours enregistrés (21 jours)';

  @override
  String get dailyReportAlert => 'Résumé des Ventes du Jour';

  @override
  String get dailyReportAlertSubtitle =>
      'Total des factures de vente pour aujourd\'hui (hors retours)';

  @override
  String get shiftLifecycleAlert => 'Ouverture/Fermeture du Shift';

  @override
  String get shiftLifecycleAlertSubtitle =>
      'Notifier le shift et les montants (solde système, inventaire, ajouté, retiré, restant)';

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
  String get revokedDevice =>
      'Déconnecté — ne peut pas entrer tant qu\'approuvé';

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
  String get deviceKickedOutBody =>
      'Votre session sur cet appareil a été terminée. La prochaine fois que vous ouvrirez l\'application, l\'écran de connexion habituel s\'affichera.';

  @override
  String get goToLoginAction => 'Aller à la connexion';

  @override
  String get exitAction => 'Quitter';

  @override
  String get closeWindowHint =>
      'Vous pouvez fermer cette fenêtre ou utiliser le bouton ci-dessus.';

  @override
  String get appWillCloseHint => 'L\'application va se fermer';

  @override
  String get deviceRevokedTitle => 'Cet appareil a été retiré du compte';

  @override
  String get deviceRevokedBody =>
      'Vous ne pouvez pas vous connecter depuis cet appareil tant qu\'un des appareils actifs du compte ne l\'approuve pas, depuis Paramètres → Compte et abonnement → « Autoriser le retour ».';

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
  String get forgotPasswordSendCodeHint =>
      'Nous vous enverrons un code de vérification pour réinitialiser votre mot de passe';

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
  String get passwordRequirementsTitle =>
      'Exigences du mot de passe (facultatif)';

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
  String get onboardingChangeLaterHint =>
      'Vous pouvez modifier ces options plus tard depuis Paramètres → Fonctionnalités du magasin.';

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
  String get onboardingStep1Question =>
      'Utilisez-vous des clients dans votre activité ?';

  @override
  String get onboardingStep1Paragraph1 =>
      'Une fois activé, vous obtenez le module client complet : une fiche pour chaque client, un historique d\'achats et un suivi rapide depuis la facture.';

  @override
  String get onboardingStep1Paragraph2 =>
      'Vous pouvez lier chaque vente à un client précis, ce qui facilite les rapports par la suite et uniformise l\'expérience pour les clients réguliers.';

  @override
  String get onboardingStep1Paragraph3 =>
      'Si vous faites une vente rapide au comptant sans nom, cela reste possible ; l\'activation n\'impose pas de choisir un client à chaque fois.';

  @override
  String get onboardingStep1Example1 =>
      'Exemple : un client régulier qui achète quotidiennement — vous enregistrez son nom et consultez rapidement ses dernières factures.';

  @override
  String get onboardingStep1Example2 =>
      'Exemple : en cas de dette ou de points de fidélité, ils apparaissent liés au même client au lieu d\'une recherche manuelle.';

  @override
  String get onboardingStep1SwitchLabel => 'Activer le module clients';

  @override
  String get onboardingStep2Question =>
      'Voulez-vous un programme de points de fidélité ?';

  @override
  String get onboardingStep2Paragraph1 =>
      'La fidélité accorde des points aux clients lors des achats, qu\'ils peuvent échanger selon les règles que vous définissez dans les paramètres.';

  @override
  String get onboardingStep2Paragraph2 =>
      'Le programme est lié aux profils clients ; plus les données clients sont claires, plus le suivi est facile.';

  @override
  String get onboardingStep2Paragraph3 =>
      'Vous pouvez activer la fonctionnalité maintenant et ajuster les taux d\'acquisition et d\'échange plus tard sans refaire cet assistant.';

  @override
  String get onboardingStep2Example1 =>
      'Exemple : chaque 10 000 IQD rapporte 10 points selon la règle choisie.';

  @override
  String get onboardingStep2Example2 =>
      'Exemple : un client ayant accumulé assez de points les échange contre une remise sur une facture ultérieure.';

  @override
  String get onboardingStep2SwitchLabel => 'Activer les points de fidélité';

  @override
  String get onboardingStep2Footnote =>
      'Nécessite l\'activation du module clients à l\'étape précédente ; s\'il n\'est pas activé, la fidélité ne fonctionnera pas tant que vous ne réactivez pas les clients.';

  @override
  String get onboardingStep3Question =>
      'Appliquez-vous une taxe lors de la vente ?';

  @override
  String get onboardingStep3Paragraph1 =>
      'Une fois activé, un champ de taxe clair apparaît sur la facture de vente afin qu\'elle soit calculée de façon cohérente avec le total.';

  @override
  String get onboardingStep3Paragraph2 =>
      'Convient aux commerces qui appliquent un taux de taxe connu sur les biens ou services.';

  @override
  String get onboardingStep3Paragraph3 =>
      'Vous pouvez ajuster le comportement détaillé depuis les paramètres du point de vente après cette configuration rapide.';

  @override
  String get onboardingStep3Example1 =>
      'Exemple : une facture de 100 000 IQD à laquelle un pourcentage de taxe déterminé est ajouté.';

  @override
  String get onboardingStep3Example2 =>
      'Exemple : l\'employé voit la taxe et le total final dans la même facture de vente.';

  @override
  String get onboardingStep3SwitchLabel =>
      'Afficher la taxe sur la facture de vente';

  @override
  String get onboardingStep4Question =>
      'Autorisez-vous une remise sur le total de la facture ?';

  @override
  String get onboardingStep4Paragraph1 =>
      'La remise globale est utile pour les offres saisonnières ou pour négocier le prix devant le client sans modifier le prix de chaque article.';

  @override
  String get onboardingStep4Paragraph2 =>
      'Le champ apparaît sur l\'écran de vente afin de compléter la facture sans complexité supplémentaire pour l\'employé.';

  @override
  String get onboardingStep4Paragraph3 =>
      'Vous pouvez la désactiver plus tard si vous décidez de travailler uniquement avec des prix fixes.';

  @override
  String get onboardingStep4Example1 =>
      'Exemple : vous accordez une remise globale de 5 000 IQD sur une grosse facture.';

  @override
  String get onboardingStep4Example2 =>
      'Exemple : une offre spéciale d\'un jour sans changer les prix de base des produits.';

  @override
  String get onboardingStep4SwitchLabel =>
      'Afficher la remise globale sur la facture';

  @override
  String get onboardingStep5Question =>
      'Vendez-vous à crédit (paiement différé) ?';

  @override
  String get onboardingStep5Paragraph1 =>
      'L\'activation ouvre le panneau des dettes et le suivi des montants dus par chaque client, avec des alertes et des plafonds ajustables.';

  @override
  String get onboardingStep5Paragraph2 =>
      'Convient aux commerçants qui font confiance à des clients connus et ont besoin d\'un historique clair des ventes à crédit.';

  @override
  String get onboardingStep5Paragraph3 =>
      'Cela n\'empêche pas les ventes au comptant ; cela ajoute seulement l\'option d\'enregistrer une vente comme dette lors de la sélection d\'un client avec les permissions appropriées.';

  @override
  String get onboardingStep5Example1 =>
      'Exemple : un client prend la marchandise aujourd\'hui et paie en fin de semaine.';

  @override
  String get onboardingStep5Example2 =>
      'Exemple : vous consultez le relevé d\'un client et voyez clairement le montant payé et le solde restant.';

  @override
  String get onboardingStep5SwitchLabel =>
      'Activer les ventes à crédit et les dettes';

  @override
  String get onboardingStep6Question =>
      'Vendez-vous à tempérament (paiement échelonné) ?';

  @override
  String get onboardingStep6Paragraph1 =>
      'Les plans d\'échelonnement permettent de diviser le prix d\'une facture en paiements programmés tout en suivant ce qu\'il reste dû par le client.';

  @override
  String get onboardingStep6Paragraph2 =>
      'Utile pour les biens à prix élevé ou les contrats de longue durée.';

  @override
  String get onboardingStep6Paragraph3 =>
      'Les détails précis de l\'échéancier sont gérés depuis les modules dédiés une fois cette configuration terminée.';

  @override
  String get onboardingStep6Example1 =>
      'Exemple : un appareil d\'une valeur de 600 000 IQD payé en 6 mensualités.';

  @override
  String get onboardingStep6Example2 =>
      'Exemple : vous voyez les paiements à venir et en retard de chaque client au même endroit.';

  @override
  String get onboardingStep6SwitchLabel => 'Activer les ventes à tempérament';

  @override
  String get onboardingStep7Question =>
      'Vendez-vous au poids (kilo, gramme, etc.) ?';

  @override
  String get onboardingStep7Paragraph1 =>
      'L\'activation prépare l\'interface de vente et les codes-barres pour prendre en charge les poids et quantités décimales lorsque nécessaire.';

  @override
  String get onboardingStep7Paragraph2 =>
      'Convient à l\'alimentation, à la quincaillerie, ou à toute activité reposant sur une balance.';

  @override
  String get onboardingStep7Paragraph3 =>
      'Vous pouvez configurer les formats de codes-barres au poids depuis les paramètres avancés après cet assistant.';

  @override
  String get onboardingStep7Example1 =>
      'Exemple : vendre 1,250 kg d\'un produit plutôt qu\'une seule pièce.';

  @override
  String get onboardingStep7Example2 =>
      'Exemple : lire un code-barres de balance contenant automatiquement le poids et le prix du produit.';

  @override
  String get onboardingStep7SwitchLabel => 'Activer la vente au poids';

  @override
  String get onboardingStep8Question =>
      'Vendez-vous des vêtements (couleurs et tailles) ?';

  @override
  String get onboardingStep8Paragraph1 =>
      'L\'activation prépare les écrans de produits et de vente pour prendre en charge les variantes d\'articles (couleurs et tailles différentes du même modèle).';

  @override
  String get onboardingStep8Paragraph2 =>
      'Facilite le suivi du stock de chaque couleur ou taille séparément et affiche une fenêtre de sélection rapide lors de la vente.';

  @override
  String get onboardingStep8Example1 =>
      'Exemple : une chemise disponible en bleu et noir, en tailles S, M et L.';

  @override
  String get onboardingStep8Example2 =>
      'Exemple : sélectionner un vêtement ouvre une fenêtre rapide pour choisir la taille et la couleur disponibles en stock.';

  @override
  String get onboardingStep8SwitchLabel =>
      'Activer le module vêtements et tailles';

  @override
  String get onboardingStep9Question =>
      'Proposez-vous des services spécifiques (réparation, atelier, etc.) ?';

  @override
  String get onboardingStep9Paragraph1 =>
      'L\'activation affiche le module complet de services et maintenance : tickets de travail, demandes d\'intervention, et catalogue des services et tarifs.';

  @override
  String get onboardingStep9Paragraph2 =>
      'Utile pour les ateliers, centres de service, et toute activité offrant des services aux clients en plus de la vente de marchandises.';

  @override
  String get onboardingStep9Example1 =>
      'Exemple : ouvrir un ticket de maintenance pour un ordinateur ou une voiture et définir le statut du travail.';

  @override
  String get onboardingStep9Example2 =>
      'Exemple : ajouter un service d\'installation ou de maintenance rapide à une facture de vente.';

  @override
  String get onboardingStep9SwitchLabel =>
      'Activer les services et tickets de maintenance';

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
  String get servicesAndMaintenancePanelLabel =>
      'Panneau des services et maintenance';

  @override
  String get addTechnicalServiceLabel => 'Ajouter un service technique';

  @override
  String get maintenanceRequestsLabel =>
      'Demandes de maintenance et tickets de travail';

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
  String get syncFailedTooltip =>
      'Synchronisation — dernière tentative échouée';

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
  String get closeAction => 'Clôturer';

  @override
  String get barcodeScanTooltip =>
      'Scanner un code-barres (caméra sur mobile, ou fenêtre du lecteur sur ordinateur)';

  @override
  String get hideKeyboardTooltip => 'Masquer le clavier';

  @override
  String get keyboardDragPinHint =>
      'Clavier arabe / anglais — faites glisser par la poignée ou épinglez-le';

  @override
  String get clearSearchTooltip => 'Effacer la recherche';

  @override
  String get searchToolsTooltip => 'Outils de recherche';

  @override
  String get showKeyboardTooltip => 'Afficher le clavier (arabe / anglais)';

  @override
  String get quickSearchHint =>
      'Recherche rapide : modules, produits, clients…';

  @override
  String get fullSearchHint =>
      'Recherche : modules, produits, clients, personnel, code-barres…';

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
  String get invoiceAlreadyReturned =>
      'Cette facture est déjà enregistrée comme retournée';

  @override
  String get invoiceNotOpenableAsReturn =>
      'Ce bon ne peut pas être ouvert comme retour de vente — annulez le paiement depuis l\'écran fournisseur ou la gestion des échelonnements selon son type.';

  @override
  String salesInvoiceNumber(Object id) {
    return 'Facture de vente #$id';
  }

  @override
  String get emptyPlaceholder => '(vide)';

  @override
  String returnInvoiceDialogBody(
    Object customer,
    Object paymentType,
    Object total,
  ) {
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
  String get noParkedSalesHint =>
      'Depuis l\'écran de vente, appuyez sur « Mettre en attente » pour enregistrer le travail en cours et servir un autre client.';

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
  String get cannotShowInvoiceNoId =>
      'Impossible d\'afficher une facture sans numéro';

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
  String get searchInvoicesHint =>
      'Rechercher par nom du client, numéro de facture ou téléphone du client...';

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
  String get openStatus => 'Ouvert';

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
  String get createReturnInvoiceTooltip =>
      'Créer une facture de retour pour cette facture';

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
  String get agreeToTermsRequired =>
      'Vous devez accepter les conditions pour continuer';

  @override
  String get passwordRecovery => 'Récupération de Mot de Passe';

  @override
  String get enterEmailForRecovery =>
      'Entrez votre email pour récupérer votre mot de passe';

  @override
  String get captchaLabel => 'Code de Vérification';

  @override
  String enterCaptcha(Object firstNumber, Object secondNumber) {
    return 'Entrez le résultat : $firstNumber + $secondNumber = ?';
  }

  @override
  String get invalidCaptcha => 'Code de vérification incorrect';

  @override
  String get invalidCredentials =>
      'Nom d\'utilisateur ou mot de passe invalide';

  @override
  String get accountCreated => 'Compte créé avec succès';

  @override
  String get loginSuccessful => 'Connecté avec succès';

  @override
  String get passwordResetSent =>
      'Le code de réinitialisation du mot de passe a été envoyé à votre email';

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
  String get signupSubtitle =>
      'Vous recevrez un code de vérification par e-mail pour confirmer votre compte';

  @override
  String get loginSubtitle =>
      'Entrez votre e-mail et mot de passe pour vous connecter';

  @override
  String get haveAccountBackToLogin => 'Déjà un compte ? Retour à la connexion';

  @override
  String get noAccountCreateNew =>
      'Pas encore de compte ? Créer un nouveau compte';

  @override
  String get requiredField => 'Obligatoire';

  @override
  String get minLength3Chars => 'Doit contenir au moins 3 caractères';

  @override
  String get nameRequired => 'Le nom est obligatoire';

  @override
  String get nameRequiredMin3 => 'Le nom est requis (au moins 3 caractères)';

  @override
  String get emailRequiredShort => 'L\'e-mail est requis';

  @override
  String get iraqMobileInvalid =>
      'Mobile irakien : 11 chiffres commençant par 07 (ex. : 07701234567)';

  @override
  String get passwordRequired => 'Le mot de passe est requis';

  @override
  String get passwordDoesNotMeetRequirements =>
      'Le mot de passe ne respecte pas les exigences';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get enterPasswordAgain => 'Veuillez ressaisir votre mot de passe';

  @override
  String get iraqDialTooltip =>
      '+964 Irak — d\'autres codes pays seront disponibles plus tard';

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
  String get failedToLoadChartData =>
      'Échec du chargement des données graphiques.';

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
  String get pinnedProductsHint =>
      'Produits épinglés — appuyez pour une vente rapide';

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
  String get groupByCategoryDesc =>
      'Filtrer les produits épinglés par une seule catégorie';

  @override
  String get groupByBrand => 'Grouper par marque';

  @override
  String get groupByBrandDesc =>
      'Filtrer les produits épinglés par une seule marque';

  @override
  String get noCategoriesYet => 'Aucune catégorie pour le moment';

  @override
  String get chooseCategory => 'Choisir une catégorie';

  @override
  String get categoryFallback => 'Catégorie';

  @override
  String get noBrandsYet =>
      'Aucune marque pour l\'instant.\nAppuyez sur «Nouvelle marque» pour ajouter votre première marque.';

  @override
  String get chooseBrand => 'Choisir une marque';

  @override
  String get brandFallback => 'Marque';

  @override
  String get groupAlreadyExists => 'Ce groupe existe déjà';

  @override
  String get noMatchingActivityYet =>
      'Aucune activité correspondante pour le moment';

  @override
  String get noActivityHint =>
      'Enregistrez des ventes, mouvements de caisse ou toute activité dans l\'application pour les voir ici chronologiquement.';

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
  String get dragToReorderCards =>
      'Glissez les éléments vers le haut ou le bas pour réordonner. L\'ordre est sauvegardé sur cet appareil.';

  @override
  String get saveOrder => 'Enregistrer l\'ordre';

  @override
  String get reorderCards => 'Réordonner les cartes';

  @override
  String get refreshNumbers => 'Actualiser les chiffres';

  @override
  String get glanceOverview => 'Aperçu rapide';

  @override
  String get dragHeightHint =>
      'Glissez vers le haut ou le bas pour modifier la hauteur de la liste des produits';

  @override
  String get pinnedProductsHeightHandle =>
      'Poignée pour modifier la hauteur de la liste des produits épinglés';

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
  String get breadcrumbNavHint =>
      'Chemin de navigation — appuyez sur une étape pour revenir';

  @override
  String currentPageLabel(Object title) {
    return 'Page actuelle : $title';
  }

  @override
  String get restrictedModeBanner =>
      'Mode restreint — connectez-vous à Internet pour vérifier';

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
  String get timeTamperMessage =>
      'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.';

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
  String get offlineMessage =>
      'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.';

  @override
  String get enterWithoutConnection => 'الدخول بدون اتصال';

  @override
  String get activateLicenseTitle => 'تفعيل الترخيص';

  @override
  String get enterLicenseKeyToContinue => 'أدخل مفتاح الترخيص للمتابعة';

  @override
  String get contactTeamForLicense =>
      'للحصول على مفتاح ترخيص، تواصل مع فريق NaBoo.';

  @override
  String get subscriptionPlansTitle => 'خطط الاشتراك';

  @override
  String get chooseRightPlan => 'اختر الخطة المناسبة لنشاطك';

  @override
  String get plansDescriptionJwt =>
      'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.';

  @override
  String get plansDescriptionLegacy =>
      'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.';

  @override
  String get howToSubscribe => 'كيفية الاشتراك';

  @override
  String get subscribeStepsJwt =>
      '١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز';

  @override
  String get subscribeStepsLegacy =>
      '١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»';

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
  String get activateTokenDescription =>
      'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.';

  @override
  String get pasteTokenHint => 'الصق رمز التفعيل هنا';

  @override
  String get activateTokenButton => 'تفعيل الرمز';

  @override
  String get pasteKeyOrTokenFirst => 'الصق مفتاح الترخيص أو رمز التفعيل أولاً';

  @override
  String get activateKeyTitle => 'تفعيل المفتاح';

  @override
  String get activateKeyDescription =>
      'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.';

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
  String get trialAutoStartsMessage =>
      'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.';

  @override
  String get jwtPlanDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.';

  @override
  String get legacyPlanDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.';

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
  String get subSettingsSubtitle =>
      'Paramètres détaillés pour chaque aspect de l\'inventaire';

  @override
  String get productAddSettingsTitle => 'Paramètres d\'ajout de produit';

  @override
  String get productAddSettingsDesc =>
      'Champs par défaut, entrepôt par défaut, champs obligatoires';

  @override
  String get barcodeSettingsTitle => 'Paramètres de code-barres';

  @override
  String get barcodeSettingsDesc =>
      'Standard de code-barres, champs intégrés dans le code-barres';

  @override
  String get categoriesTitle => 'Catégories';

  @override
  String get categoriesDesc =>
      'Ajouter, modifier et supprimer des catégories de produits';

  @override
  String get brandsTitle => 'Marques';

  @override
  String get brandsDesc => 'Ajouter, modifier et supprimer des marques';

  @override
  String get unitTemplatesTitle => 'Modèles d\'unités';

  @override
  String get unitTemplatesDesc =>
      'Gérez les modèles d\'unités (base et conversion) depuis l\'écran dédié. Ouvrez «Modèles d\'unités» depuis le menu principal.';

  @override
  String get stockMovementsTitle => 'Mouvements de stock';

  @override
  String get newVoucher => 'Nouveau bon';

  @override
  String get deposits => 'Dépôts';

  @override
  String get withdrawals => 'Retraits';

  @override
  String get transfers => 'Transferts';

  @override
  String get searchByProductOrVoucher =>
      'Rechercher par produit ou numéro de bon...';

  @override
  String get noMovements => 'Aucun mouvement';

  @override
  String get noItems => 'Sans articles';

  @override
  String failedToLoadMovements(Object error) {
    return 'Échec du chargement des mouvements : $error';
  }

  @override
  String get filterAll => 'Tout';

  @override
  String get filterDeposit => 'Dépôt';

  @override
  String get filterWithdraw => 'Retrait';

  @override
  String get filterTransfer => 'Transfert';

  @override
  String get sortNewest => 'Plus récent';

  @override
  String get sortOldest => 'Plus ancien';

  @override
  String get productDetails => 'Détails du produit';

  @override
  String get unpinFromHome => 'Désépingler de l\'accueil';

  @override
  String get pinToHome => 'Épingler à l\'accueil';

  @override
  String get failedToLoadProduct => 'Échec du chargement des données produit';

  @override
  String get lowStock => 'Stock bas';

  @override
  String get inStock => 'En stock';

  @override
  String get summary => 'Résumé';

  @override
  String get availableQtyLabel => 'Quantité disponible';

  @override
  String get salePrice => 'Prix de vente';

  @override
  String get minSalePrice => 'Prix de vente minimum';

  @override
  String get purchasePrice => 'Prix d\'achat';

  @override
  String get warehouseStock => 'Stock entrepôt';

  @override
  String get noWarehouseData => 'Aucune donnée d\'entrepôt';

  @override
  String get batchesLast20 => 'Lots (Derniers 20)';

  @override
  String get noRecordedBatches => 'Aucun lot enregistré';

  @override
  String get batch => 'Lot';

  @override
  String get recentSalesMovements => 'Ventes / Mouvements récents';

  @override
  String get noRecentSales => 'Aucune vente récente';

  @override
  String get warehouseFallback => 'Entrepôt';

  @override
  String get stockAnalytics => 'Analyses de stock';

  @override
  String get stockOverview => 'Aperçu du stock';

  @override
  String get inventoryValue => 'Valeur du stock';

  @override
  String get totalProducts => 'Total des produits';

  @override
  String get lowStockLabel => 'Stock bas';

  @override
  String get outOfStockLabel => 'Rupture de stock';

  @override
  String nearExpiryWarning(Object count) {
    return '$count produits expirent dans les 60 jours — consultez la liste ci-dessous';
  }

  @override
  String get nearExpiry60days => 'Proche de l\'expiration (60 jours)';

  @override
  String get topSellersLast30 => 'Meilleures ventes — 30 derniers jours';

  @override
  String get inventoryValueByCategory => 'Valeur du stock par catégorie';

  @override
  String get product => 'Produit';

  @override
  String get quantity => 'Quantité';

  @override
  String get minimumThreshold => 'Seuil minimum';

  @override
  String get expiryDate => 'Date d\'expiration';

  @override
  String get soldQuantity => 'Quantité vendue';

  @override
  String get revenue => 'Revenus';

  @override
  String productCount(Object count) {
    return '$count produits';
  }

  @override
  String get noCategory => 'Sans catégorie';

  @override
  String get unitTemplates => 'Modèles d\'unités';

  @override
  String get search => 'Rechercher';

  @override
  String get all => 'Toutes';

  @override
  String get cancelFilter => 'Annuler le filtre';

  @override
  String get newTemplate => 'Nouveau modèle';

  @override
  String get sortBy => 'Trier par';

  @override
  String get results => 'Résultats';

  @override
  String get noTemplatesYet =>
      'Aucun modèle pour l\'instant.\nAppuyez sur «Nouveau modèle» pour ajouter un modèle et lier les unités de vente aux produits.';

  @override
  String get edit => 'Modifier';

  @override
  String get delete => 'Supprimer';

  @override
  String get activeStatus => 'Actif';

  @override
  String get inactiveStatus => 'Inactif';

  @override
  String get deleteTemplate => 'Supprimer le modèle';

  @override
  String deleteTemplateConfirm(Object name) {
    return 'Supprimer «$name» ?';
  }

  @override
  String get deleted => 'Supprimé';

  @override
  String get newTemplateEditor => 'Nouveau modèle';

  @override
  String get editTemplateEditor => 'Modifier le modèle';

  @override
  String get templateNotFound => 'Modèle introuvable.';

  @override
  String get baseUnitNameLabel => 'Nom de l\'unité de base';

  @override
  String get baseUnitHint => 'ex. gramme';

  @override
  String get symbolLabel => 'Symbole';

  @override
  String get symbolHint => 'ex. g';

  @override
  String get addUnit => 'Ajouter une unité';

  @override
  String get templateNameLabel => 'Nom du modèle';

  @override
  String get templateHint => 'ex. Poids';

  @override
  String get activeLabel => 'Actif';

  @override
  String get templateCreated => 'Modèle créé';

  @override
  String get templateSaved => 'Modifications enregistrées';

  @override
  String get largerUnitNameLabel => 'Nom de l\'unité supérieure';

  @override
  String get largerUnitHint => 'ex. kilogramme';

  @override
  String get conversionFactorLabel => 'Facteur de conversion vers la base';

  @override
  String get conversionFactorHint => 'ex. 1000';

  @override
  String get unitSymbolHint => 'ex. kg';

  @override
  String get baseUnitTooltip =>
      'Plus petite unité de mesure dans ce modèle (ex. kilogramme pour la vente au poids).';

  @override
  String get newBrand => 'Nouvelle marque';

  @override
  String get brandNameLabel => 'Nom de la marque';

  @override
  String get brandSaved => 'Marque enregistrée';

  @override
  String get deleteBrand => 'Supprimer la marque';

  @override
  String deleteBrandConfirm(Object name) {
    return 'Supprimer «$name» ?';
  }

  @override
  String get searchAndFilter => 'Recherche et filtre';

  @override
  String showHide(String show) {
    String _temp0 = intl.Intl.selectLogic(show, {
      'true': 'Masquer',
      'other': 'Afficher',
    });
    return '$_temp0';
  }

  @override
  String get barcodeConfiguration => 'Configuration du code-barres';

  @override
  String get barcodeConfigDesc =>
      'Définissez les préférences et formats de code-barres pour un scan précis et la tarification au poids.';

  @override
  String get barcodeType => 'Type de code-barres';

  @override
  String get code128Desc =>
      'Code-barres flexible prenant en charge l\'encodage alphanumérique, largement utilisé dans la logistique, l\'entreposage et le suivi des produits.';

  @override
  String get ean13Desc =>
      'Standard à 13 chiffres couramment utilisé dans la distribution, incluant le code pays, le code fabricant et le code produit avec chiffre de contrôle.';

  @override
  String get selectBarcodeStandard =>
      'Sélectionnez le standard de code-barres que le système utilisera pour générer et lire les codes-barres des produits.';

  @override
  String get weightEmbedBarcode => 'Code-barres avec poids intégré';

  @override
  String get enabledLabel => 'Activé';

  @override
  String get disabledLabel => 'Désactivé';

  @override
  String get weightEmbedDesc =>
      'Utilisez le code-barres avec poids intégré pour que le système puisse lire le poids du produit directement depuis le code-barres.';

  @override
  String get embeddedPattern => 'Format du code-barres intégré';

  @override
  String get patternFormatDesc =>
      'Entrez le format du code-barres intégré, où X représente les chiffres du produit et W les chiffres du poids.';

  @override
  String get patternExample =>
      'Par exemple, si le poids est affiché sur 4 chiffres, 250 grammes apparaîtra comme 0250.';

  @override
  String get weightDivisor => 'Diviseur d\'unité de poids';

  @override
  String get weightDivisorHint => 'ex. 1000';

  @override
  String get weightDivisorDesc =>
      'Entrez la valeur que le système utilise pour convertir l\'unité de poids dans le code-barres en unité de vente.';

  @override
  String get currencyDivisor => 'Diviseur de devise';

  @override
  String get currencyDivisorHint => 'ex. 100';

  @override
  String get currencyDivisorDesc =>
      'Entrez la valeur que le système utilise pour convertir le prix de l\'unité intégrée dans le code-barres en prix de vente.';

  @override
  String get barcodePatternError =>
      'Le format du code-barres intégré ne doit contenir que les lettres X, W, P et N.';

  @override
  String get weightDivisorError =>
      'Entrez une valeur valide supérieure à zéro pour le diviseur d\'unité de poids.';

  @override
  String get currencyDivisorError =>
      'Entrez une valeur valide supérieure à zéro pour le diviseur de devise.';

  @override
  String get barcodeSettingsSaved => 'Paramètres de code-barres enregistrés.';

  @override
  String saveError(Object error) {
    return 'Échec de l\'enregistrement : $error';
  }

  @override
  String get savingLabel => 'Enregistrement…';

  @override
  String get saveSettings => 'Enregistrer les paramètres';

  @override
  String get productsFullSettings =>
      'Les paramètres complets des produits (configuration, suivi, autorisations, valeurs par défaut) sont disponibles depuis la carte principale «Paramètres des produits».';

  @override
  String get categoriesMoved =>
      'La gestion des catégories a été déplacée vers un écran dédié. Ouvrez «Catégories» depuis le menu principal.';

  @override
  String get brandsMoved =>
      'La gestion des marques a été déplacée vers un écran dédié. Ouvrez «Marques» depuis le menu principal.';

  @override
  String get barcodeMoved =>
      'La configuration du code-barres a été déplacée vers un écran dédié. Ouvrez «Paramètres du code-barres» depuis ce menu.';

  @override
  String get defaultWarehouses => 'Entrepôts par défaut des employés';

  @override
  String get forceDefaultWarehouse =>
      'Forcer l\'entrepôt par défaut lors de l\'enregistrement des mouvements';

  @override
  String get recommendDefaultWarehouse =>
      'Il est recommandé de lier chaque employé à un entrepôt par défaut pour suivre les autorisations et les mouvements.';

  @override
  String get unitsSection => 'Unités';

  @override
  String get allowDifferentPurchaseUnits =>
      'Autoriser des unités d\'achat différentes des unités de vente';

  @override
  String get showConversionsInPO =>
      'Afficher les conversions dans les bons de commande';

  @override
  String get printingSection => 'Impression';

  @override
  String get includeStoreLogo =>
      'Inclure le logo du magasin dans les documents';

  @override
  String get printBarcodeOnIssue =>
      'Imprimer le code-barres sur les bons de sortie';

  @override
  String get customFieldsSection => 'Champs personnalisés';

  @override
  String get showCustomFieldLists =>
      'Afficher les champs personnalisés dans les listes de produits';

  @override
  String get includeInExport => 'Inclure dans les rapports exportables';

  @override
  String get noAdditionalSettings =>
      'Aucun paramètre supplémentaire pour cette catégorie pour l\'instant.';

  @override
  String get autoNumberingTitle => 'Numérotation automatique des produits';

  @override
  String get autoNumberingDesc =>
      'Contrôler les paramètres et le format de la numérotation automatique.';

  @override
  String get nextNumberLabel => 'Numéro suivant';

  @override
  String get nextNumberDesc =>
      'Le numéro que le système attribuera au prochain élément.';

  @override
  String get numberingFormat => 'Format de numérotation';

  @override
  String get numericFormat => 'Numérique (0, 1, 2, …)';

  @override
  String get alphaFormat => 'Alphabétique';

  @override
  String get alnumFormat => 'Alphanumérique';

  @override
  String get formatDescription =>
      'Choisissez le format à utiliser pour la génération des numéros (numérique, alphabétique ou mixte).';

  @override
  String get digitCountLabel => 'Nombre de chiffres';

  @override
  String get digitCountDesc =>
      'Définissez le nombre de chiffres pour le numéro de série. Si le nombre est inférieur, des zéros sont ajoutés à gauche.';

  @override
  String get uniqueLabel => 'Unique';

  @override
  String get uniqueDesc =>
      'Assurez-vous que chaque numéro de la séquence est unique et non dupliqué.';

  @override
  String get prefixLabel => 'Préfixe';

  @override
  String get prefixHint => 'ex. PR ou INV';

  @override
  String get prefixDesc =>
      'Caractères qui apparaissent avant le numéro du document. Peuvent être fixes comme INV ou suivre un motif.';

  @override
  String get noAdditionalSettingsForCategory =>
      'Aucun paramètre supplémentaire pour cette catégorie pour l\'instant.';

  @override
  String get hideLabel => 'Masquer';

  @override
  String get showLabel => 'Afficher';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get newCategory => 'Nouvelle catégorie';

  @override
  String get parentCategory => 'Catégorie parente';

  @override
  String get noParent => 'Aucune (niveau supérieur)';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get categorySaved => 'Catégorie enregistrée';

  @override
  String get deleteCategory => 'Supprimer la catégorie';

  @override
  String deleteCategoryConfirm(Object name) {
    return 'Supprimer «$name» ?';
  }

  @override
  String get addNewCategory => 'Ajouter une catégorie';

  @override
  String get rootsOnly => 'Racines uniquement (sans parent)';

  @override
  String underParent(Object name) {
    return 'Sous : $name';
  }

  @override
  String get noMatchingCategories =>
      'Aucune catégorie correspondante.\nAjoutez une catégorie ou modifiez le filtre.';

  @override
  String get noResults => 'Aucun résultat';

  @override
  String get inventoryManagement => 'Gestion des stocks';

  @override
  String get alerts => 'Alertes';

  @override
  String get inventorySettings => 'Paramètres des stocks';

  @override
  String get mainSections => 'Sections principales';

  @override
  String get recentInventoryMovements => 'Mouvements de stock récents';

  @override
  String get quickActions => 'Actions rapides';

  @override
  String get addProduct => 'Ajouter un produit';

  @override
  String get inventoryVoucher => 'Bon de stock';

  @override
  String get periodicStocktaking => 'Inventaire périodique';

  @override
  String get movements => 'Mouvements';

  @override
  String get products => 'Produits';

  @override
  String get productsSub => 'Voir et gérer tous les articles';

  @override
  String get warehouses => 'Entrepôts';

  @override
  String get warehousesSub => 'Suivre les balances et les emplacements';

  @override
  String get inventoryVouchers => 'Bons de stock';

  @override
  String get inventoryVouchersSub => 'Dépôt, retrait et transfert';

  @override
  String get priceLists => 'Listes de prix';

  @override
  String get priceListsSub => 'Détail, gros et spécial';

  @override
  String get periodicStocktakingSub => 'Rapprocher les écarts réels';

  @override
  String get inventorySettingsSub => 'Unités, catégories, impression';

  @override
  String get deposit => 'Dépôt';

  @override
  String get withdrawal => 'Retrait';

  @override
  String get transfer => 'Transfert';

  @override
  String get lastMovements => 'Derniers mouvements';

  @override
  String get viewAll => 'Voir tout';

  @override
  String get savedInventoryPolicies => 'Politiques de stock enregistrées';

  @override
  String get inventoryPolicyCenter => 'Centre de politiques de stock';

  @override
  String get saveTooltip => 'Enregistrer';

  @override
  String get customerActivityType => 'Type d\'activité client';

  @override
  String get activityProfile => 'Profil d\'activité';

  @override
  String get activityTypeDesc =>
      'Lors de la sélection d\'un type d\'activité, les propriétés par défaut sont définies automatiquement — vous pouvez les modifier manuellement.';

  @override
  String get enableUnits => 'Activer les unités';

  @override
  String get productManagement => 'Gestion des produits';

  @override
  String get addProductToggle => 'Ajouter un produit';

  @override
  String get inventoryVouchersToggle => 'Bons de stock';

  @override
  String get priceListsToggle => 'Listes de prix';

  @override
  String get warehousesToggle => 'Entrepôts';

  @override
  String get stocktakingToggle => 'Inventaire';

  @override
  String get settingsToggle => 'Paramètres des stocks';

  @override
  String get productCardProperties => 'Propriétés de la fiche produit';

  @override
  String get gradeField => 'Champ de grade / qualité';

  @override
  String get expiryTracking => 'Date de péremption et production';

  @override
  String get batchTracking => 'Suivi des lots';

  @override
  String get lowStockAlerts => 'Alertes de stock bas';

  @override
  String get productImages => 'Images du produit';

  @override
  String get productVariants => 'Variantes du produit (taille/couleur)';

  @override
  String get purchasingAndSuppliers => 'Achats et fournisseurs';

  @override
  String get purchaseOrders => 'Bons de commande (BC)';

  @override
  String get requireSourceOnInbound => 'Exiger la source sur les entrées';

  @override
  String get analyticsAndReports => 'Analyses et rapports';

  @override
  String get items => 'articles';

  @override
  String get iqd => 'IQD';

  @override
  String get warehouseLabel => 'Entrepôt';

  @override
  String get periodicStocktakingTitle => 'Inventaire périodique';

  @override
  String openSessions(Object count) {
    return 'Sessions ouvertes ($count)';
  }

  @override
  String closedSessions(Object count) {
    return 'Terminées ($count)';
  }

  @override
  String get startNewStocktake => 'Démarrer un nouvel inventaire';

  @override
  String get closeStocktaking => 'Clôturer l\'inventaire';

  @override
  String closeStocktakeConfirm(Object title) {
    return 'Voulez-vous clôturer la session «$title» ?';
  }

  @override
  String get autoPostDifferences => 'Transférer les écarts automatiquement';

  @override
  String get autoPostDesc => 'Crée un bon d\'ajustement unique pour la session';

  @override
  String get sessionClosedSuccess => 'Session clôturée avec succès';

  @override
  String get noSessionsYet => 'Aucune session pour l\'instant';

  @override
  String get closedStatus => 'Terminé';

  @override
  String itemsCount(Object counted, Object total) {
    return '$counted / $total articles';
  }

  @override
  String startedAt(Object date) {
    return 'Démarré : $date';
  }

  @override
  String closedAt(Object date) {
    return 'Clôturé : $date';
  }

  @override
  String get closeStocktakingAction => 'Clôturer l\'inventaire';

  @override
  String get reportAction => 'Rapport';

  @override
  String get startNewStocktakeSession =>
      'Démarrer une nouvelle session d\'inventaire';

  @override
  String get sessionTitleLabel => 'Titre de la session *';

  @override
  String get sessionTitleHint => 'ex. Inventaire juillet 2025';

  @override
  String get selectWarehouseError => 'Sélectionnez un entrepôt';

  @override
  String get startStocktakingBtn => 'Démarrer l\'inventaire';

  @override
  String get searchHint => 'Nom, code-barres, SKU, ou numéro de produit';

  @override
  String systemQty(Object qty) {
    return 'Système : $qty';
  }

  @override
  String diffQty(Object diff) {
    return 'Écart : $diff';
  }

  @override
  String get enterValueHint => 'Saisir';

  @override
  String reportTitle(Object title) {
    return 'Rapport : $title';
  }

  @override
  String get totalItemsLabel => 'Total des articles';

  @override
  String get countedLabel => 'Comptés';

  @override
  String get uncountedLabel => 'Non comptés';

  @override
  String get sessionSummary => 'Résumé de la session :';

  @override
  String get statusRow => 'Statut';

  @override
  String actualQty(Object qty) {
    return 'Réel : $qty';
  }

  @override
  String get purchaseOrdersTitle => 'Bons de commande';

  @override
  String get newPurchaseOrder => 'Nouveau bon de commande';

  @override
  String get sentLabel => 'Envoyé';

  @override
  String get partialLabel => 'Partiel';

  @override
  String get completedLabel => 'Terminé';

  @override
  String totalOrderValue(Object value) {
    return 'Valeur totale : $value';
  }

  @override
  String get clearTooltip => 'Effacer';

  @override
  String get cancelOrder => 'Annuler le bon de commande';

  @override
  String get cancelOrderConfirm => 'Voulez-vous annuler cette commande ?';

  @override
  String get backAction => 'Retour';

  @override
  String get cancelAction => 'Annuler';

  @override
  String get allFilter => 'Tous';

  @override
  String get draftStatus => 'Brouillon';

  @override
  String get sentStatus => 'Envoyé';

  @override
  String get partialStatus => 'Partiel';

  @override
  String get receivedStatus => 'Terminé';

  @override
  String get cancelledStatus => 'Annulé';

  @override
  String get noSupplier => 'Fournisseur non spécifié';

  @override
  String receivedValue(Object received, Object total) {
    return 'Reçu $received sur $total';
  }

  @override
  String itemCount(Object count) {
    return '$count articles';
  }

  @override
  String get viewAction => 'Voir';

  @override
  String get editAction => 'Modifier';

  @override
  String get copyAction => 'Copier';

  @override
  String get noResultsMatch => 'Aucun résultat ne correspond à la recherche';

  @override
  String get noPurchaseOrdersYet => 'Aucun bon de commande pour l\'instant';

  @override
  String get createFirstOrder => '+ Créer le premier bon de commande';

  @override
  String get orPressCtrlN => 'Ou appuyez sur Ctrl+N';

  @override
  String get failedToFetchLowItems =>
      'Échec de la récupération des articles en rupture. Vérifiez la base de données.';

  @override
  String get noNewItemsAllAdded =>
      'Aucun nouvel article : tous les produits en rupture sont déjà dans la liste.';

  @override
  String get noLowStockProducts =>
      'Aucun produit en stock bas (au ou en dessous du seuil d\'alerte avec suivi activé).';

  @override
  String addedLowItems(Object added) {
    return 'Ajout de $added articles en rupture. Ajustez les quantités puis enregistrez.';
  }

  @override
  String skippedDuplicates(Object skipped) {
    return ' ($skipped doublons ignorés)';
  }

  @override
  String showingOnlyFirst(Object count) {
    return ' — Affichage des $count premiers articles uniquement.';
  }

  @override
  String get addAtLeastOne => 'Ajoutez au moins un article';

  @override
  String get checkNameAndQty =>
      'Vérifiez le nom et la quantité de chaque article';

  @override
  String errorOccurred(Object error) {
    return 'Une erreur s\'est produite : $error';
  }

  @override
  String get editPurchaseOrder => 'Modifier le bon de commande';

  @override
  String get newPurchaseOrderTitle => 'Nouveau bon de commande';

  @override
  String get orderInfo => 'Informations de la commande';

  @override
  String get supplierLabel => 'Fournisseur';

  @override
  String get selectSupplierHint => 'Sélectionnez un fournisseur (optionnel)';

  @override
  String get noSupplierText => '— Sans fournisseur —';

  @override
  String get orderDateLabel => 'Date de commande';

  @override
  String get expectedDeliveryLabel => 'Date de livraison prévue';

  @override
  String get selectOptionalHint => 'Sélectionner (optionnel)';

  @override
  String get statusLabel => 'Statut';

  @override
  String get draftText => 'Brouillon';

  @override
  String get sentText => 'Envoyé au fournisseur';

  @override
  String get partialText => 'Partiellement reçu';

  @override
  String get receivedText => 'Entièrement reçu';

  @override
  String get cancelledText => 'Annulé';

  @override
  String get notesLabel => 'Notes';

  @override
  String get notesHint => 'Conditions, détails, notes…';

  @override
  String get orderItems => 'Articles de la commande';

  @override
  String get fillLowStock => 'Remplir depuis stock bas';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get emptyListHint =>
      'Appuyez sur «Remplir depuis stock bas» ou «Ajouter un article» pour commencer';

  @override
  String get itemCol => 'Article';

  @override
  String get qtyCol => 'Quantité';

  @override
  String get unitPriceCol => 'Prix unitaire';

  @override
  String get totalCol => 'Total';

  @override
  String get grandTotal => 'Total général';

  @override
  String get itemNameHint => 'Nom de l\'article';

  @override
  String get noProductForBarcode => 'Aucun produit trouvé pour ce code-barres';

  @override
  String get productAlreadyExists => 'Le produit existe déjà';

  @override
  String get removeFromList => 'Retirer de la liste';

  @override
  String get removeConfirm =>
      'La quantité d\'impression est supérieure à 5. Retirer ?';

  @override
  String get removeAction => 'Retirer';

  @override
  String get quantitiesUpdated => 'Quantités mises à jour';

  @override
  String zeroQtySkipped(Object count) {
    return 'Produits avec quantité zéro ignorés ($count)';
  }

  @override
  String get resetAll => 'Tout réinitialiser';

  @override
  String get resetConfirm =>
      'Toutes les quantités seront réinitialisées à 1. Continuer ?';

  @override
  String get printPreview => 'Aperçu avant impression';

  @override
  String totalLabels(Object count) {
    return 'Total des étiquettes : $count';
  }

  @override
  String get printViaSystem =>
      'Imprimer via l\'imprimante par défaut ou depuis l\'écran d\'aperçu.';

  @override
  String get productBarcodes => 'Étiquettes code-barres produits';

  @override
  String get printedTitle => 'Imprimé';

  @override
  String get printedContent =>
      'Aperçu exécuté ou imprimé depuis la fenêtre système.';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get printAgain => 'Imprimer à nouveau';

  @override
  String get printListCleared => 'Liste d\'impression vidée';

  @override
  String get itemFallback => 'Article';

  @override
  String get kgUnit => 'kg';

  @override
  String get justNow => 'À l\'instant';

  @override
  String minutesAgo(Object minutes) {
    return 'Il y a $minutes min';
  }

  @override
  String hoursAgo(Object hours) {
    return 'Il y a ${hours}h';
  }

  @override
  String get dayOrMoreAgo => 'Il y a un jour ou plus';

  @override
  String get barcodeLabelsTitle => 'Imprimer étiquettes code-barres';

  @override
  String lastUpdate(Object time) {
    return 'Dernière mise à jour : $time — Actualiser prix et stock';
  }

  @override
  String printLabelsBtn(Object count) {
    return 'Imprimer $count étiquettes';
  }

  @override
  String loadFailed(Object error) {
    return 'Échec du chargement : $error';
  }

  @override
  String get searchProductHint => 'Rechercher un produit';

  @override
  String get searchProductSub =>
      'Deux caractères ou plus (nom / code-barres / SKU)';

  @override
  String get weightProductsNote =>
      'Produits au poids : L\'ID est imprimé sur l\'étiquette ; le poids est déterminé à la vente.';

  @override
  String get barcodeLabel => 'Code-barres';

  @override
  String stockLabel(Object qty) {
    return 'Stock : $qty';
  }

  @override
  String skuLabel(Object code) {
    return 'SKU : $code';
  }

  @override
  String get sizeAndPreview =>
      'Choisir la taille et l\'apparence de l\'aperçu (s\'applique aux cartes et à l\'impression).';

  @override
  String get labelSizeHint => 'Taille de l\'étiquette';

  @override
  String get showProductName => 'Afficher le nom du produit';

  @override
  String get showPrice => 'Afficher le prix';

  @override
  String get smartQtyTooltip =>
      'Ajuste automatiquement la quantité d\'impression selon le stock';

  @override
  String get smartQtyLabel => 'Quantité intelligente';

  @override
  String get setAllOne => 'Tout mettre à (1)';

  @override
  String setAllOneCount(Object count) {
    return 'Tout mettre à (1) ($count)';
  }

  @override
  String productsCount(Object count) {
    return 'Produits : $count';
  }

  @override
  String totalLabelsCount(Object count) {
    return 'Total des étiquettes : $count';
  }

  @override
  String get searchToAddHint =>
      'Rechercher un produit à ajouter pour l\'impression';

  @override
  String get addMultipleHint =>
      'Vous pouvez ajouter plusieurs produits et les imprimer tous en une fois';

  @override
  String get removeTooltip => 'Retirer';

  @override
  String stockAndPrint(Object print, Object stock) {
    return 'Stock : $stock | Impression : $print';
  }

  @override
  String get printQtyExceedsStock =>
      'La quantité d\'impression dépasse le stock';

  @override
  String get decreaseTooltip => 'Diminuer';

  @override
  String get increaseTooltip => 'Augmenter';

  @override
  String previewLabel(Object name, Object price, Object size) {
    return 'Aperçu : $name — $price — $size';
  }

  @override
  String priceFormat(Object price) {
    return '$price IQD';
  }

  @override
  String get autoBarcodeNote => 'Un code-barres sera généré automatiquement';

  @override
  String get unsavedChanges => 'Modifications non enregistrées';

  @override
  String get unsavedChangesConfirm =>
      'Les modifications n\'ont pas été enregistrées. Quitter ?';

  @override
  String get stayAction => 'Rester';

  @override
  String get leaveAction => 'Quitter';

  @override
  String productSelected(Object name) {
    return 'Sélectionné : $name';
  }

  @override
  String failedToLoad(Object error) {
    return 'Échec du chargement : $error';
  }

  @override
  String failedToLoadMore(Object error) {
    return 'Échec du chargement supplémentaire : $error';
  }

  @override
  String get clearProductBarcode => 'Effacer le code-barres produit';

  @override
  String get nameEmpty => 'Le nom du produit ne peut pas être vide';

  @override
  String get nameTooLong => 'Le nom du produit est trop long';

  @override
  String get barcodeAlreadyUsed => 'Le code-barres est déjà utilisé';

  @override
  String get minPriceExceedsSalePrice =>
      'Le prix de vente minimum ne peut pas dépasser le prix de vente';

  @override
  String get productUpdatedSuccess => 'Produit mis à jour avec succès';

  @override
  String get barcodeUsedByOther =>
      'Le code-barres est utilisé par un autre produit/unité';

  @override
  String get saveFailed => 'Échec de l\'enregistrement des modifications';

  @override
  String get lossSuffix => ' — Perte';

  @override
  String get profitMarginLabel => 'Marge bénéficiaire : ';

  @override
  String get profitLabel => 'Bénéfice : ';

  @override
  String get updateExistingProduct => 'Mettre à jour un produit existant';

  @override
  String get clearBarcodeCameraTooltip => 'Effacer code-barres (caméra)';

  @override
  String get searchLabel => 'Rechercher';

  @override
  String get typeTwoCharsHint =>
      'Saisissez deux caractères pour la recherche unifiée';

  @override
  String get noResultsFound => 'Aucun résultat trouvé';

  @override
  String get scannerSearchNote =>
      'Sur cette page : Le lecteur code-barres (HID) recherche le produit ici et ne redirige pas vers les ventes. Faites défiler pour charger plus.';

  @override
  String get noResultsForText =>
      'Aucun résultat pour ce texte pour l\'instant.';

  @override
  String get pieceUnit => 'pièce';

  @override
  String get outOfStockWarning => 'Le produit est en rupture de stock';

  @override
  String get lowStockWarning => 'La quantité a atteint le seuil d\'alerte';

  @override
  String get productNameLabel => 'Nom du produit';

  @override
  String get barcodeAlreadyUsedByOther => 'Le code-barres est déjà utilisé';

  @override
  String get viewProductWithBarcode => 'Voir le produit avec ce code-barres';

  @override
  String get purchasePriceLabel => 'Prix d\'achat';

  @override
  String get salePriceLabel => 'Prix de vente';

  @override
  String get minSalePriceLabel => 'Prix de vente minimum';

  @override
  String get quantityLabel => 'Quantité';

  @override
  String get alertThresholdLabel => 'Seuil d\'alerte';

  @override
  String productIdLabel(Object id) {
    return 'ID $id';
  }

  @override
  String categoryLabel(Object name) {
    return 'Catégorie : $name';
  }

  @override
  String get stockTrackingDisabled =>
      'Le suivi des stocks est désactivé pour cet article — la quantité en base restera telle quelle lors de l\'enregistrement.';

  @override
  String get saveLabel => 'Enregistrer';

  @override
  String get retailList => 'Liste de détail';

  @override
  String get retailDesc =>
      'Prix de vente au détail pour les clients ordinaires';

  @override
  String get wholesaleList => 'Liste de gros';

  @override
  String get wholesaleDesc =>
      'Prix de gros pour les distributeurs et commerçants';

  @override
  String get vipList => 'Liste Client VIP';

  @override
  String get vipDesc => 'Prix spéciaux pour les clients fidèles (VIP)';

  @override
  String get cannotDeleteDefault =>
      'Impossible de supprimer la liste de prix par défaut';

  @override
  String get deletePriceList => 'Supprimer la liste de prix';

  @override
  String deletePriceListConfirm(Object name) {
    return 'Supprimer «$name» ?';
  }

  @override
  String get priceListsTitle => 'Listes de prix';

  @override
  String get listsTab => 'Listes';

  @override
  String get productsByListTab => 'Produits par liste';

  @override
  String get newListBtn => 'Nouvelle liste';

  @override
  String get defaultLabel => 'Par défaut';

  @override
  String get setAsDefault => 'Définir par défaut';

  @override
  String get managePrices => 'Gérer les prix';

  @override
  String get productCol => 'Produit';

  @override
  String get purchasePriceCol => 'Prix d\'achat';

  @override
  String get retailPriceCol => 'Prix détail';

  @override
  String get wholesalePriceCol => 'Prix gros';

  @override
  String get vipPriceCol => 'Prix VIP';

  @override
  String listPricesTitle(Object name) {
    return 'Prix de $name';
  }

  @override
  String get salePriceCol => 'Prix de vente';

  @override
  String get editList => 'Modifier la liste';

  @override
  String get newListTitle => 'Nouvelle liste de prix';

  @override
  String get listNameLabel => 'Nom de la liste *';

  @override
  String get listColorLabel => 'Couleur de la liste :';

  @override
  String get saveChanges => 'Enregistrer';

  @override
  String get createList => 'Créer la liste';

  @override
  String get colorsAndSizes => 'Couleurs & Tailles';

  @override
  String get closeBtn => 'Fermer';

  @override
  String get doneBtn => 'Terminé';

  @override
  String get addAtLeastOneColor => 'Ajoutez au moins une couleur.';

  @override
  String get colorNameRequired => 'Le nom de la couleur est obligatoire.';

  @override
  String get addAtLeastOneSize => 'Ajoutez au moins une taille par couleur.';

  @override
  String get sizeFieldRequired => 'Le champ taille est obligatoire.';

  @override
  String duplicateSize(Object color, Object size) {
    return 'La taille \"$size\" est dupliquée dans la couleur \"$color\".';
  }

  @override
  String get qtyMustBeNonNegative =>
      'La quantité doit être un entier positif ou nul.';

  @override
  String get duplicateBarcode =>
      'Code-barres en double trouvé dans les variantes.';

  @override
  String get conversionFactorError =>
      'Le facteur de conversion doit être supérieur à 0 pour chaque nouvelle unité.';

  @override
  String get variantBarcodeUsed => 'Le code-barres variante est déjà utilisé';

  @override
  String get conversionFactorGt0 =>
      'Le facteur de conversion doit être supérieur à 0';

  @override
  String get chooseColorTitle => 'Choisir une couleur';

  @override
  String get chooseColorSubtitle =>
      'Choisissez une couleur pour représenter cette option (optionnel).';

  @override
  String get applyUniformQtyTitle => 'Appliquer une quantité uniforme';

  @override
  String get enterQtyHint => 'Saisissez la quantité (0 ou plus)';

  @override
  String get qtyMustBePositive =>
      'La quantité doit être un entier positif ou nul.';

  @override
  String get sizeLabel => 'Taille';

  @override
  String get chooseSizeTooltip => 'Choisir la taille';

  @override
  String get qtyLabel => 'Quantité';

  @override
  String get barcodeOptional => 'Code-barres (optionnel)';

  @override
  String get deleteTooltip => 'Supprimer';

  @override
  String get colorNameLabel => 'Nom de la couleur';

  @override
  String get colorPickerTooltip => 'Choisir une couleur (HEX)';

  @override
  String get deleteColorTooltip => 'Supprimer la couleur';

  @override
  String get sizesAndQuantities => 'Tailles & Quantités';

  @override
  String get noSizesYet =>
      'Aucune taille pour l\'instant. Ajoutez au moins une taille.';

  @override
  String get addSizeBtn => 'Ajouter une taille';

  @override
  String colorTotal(Object count) {
    return 'Total couleur : $count';
  }

  @override
  String get addNewColor => 'Ajouter une nouvelle couleur';

  @override
  String get applyUniformQtyAllSizes =>
      'Appliquer une quantité uniforme à toutes les tailles';

  @override
  String get noColorsYet =>
      'Aucune couleur pour l\'instant. Ajoutez une couleur pour commencer.';

  @override
  String get editProductTitle => 'Modifier le produit';

  @override
  String get saveBtn => 'Enregistrer';

  @override
  String get productNameHint => 'ex. Sucre 1 kg';

  @override
  String get barcodeOptionalLabel => 'Code-barres (optionnel)';

  @override
  String get trackStock => 'Suivi des stocks';

  @override
  String get trackStockDesc =>
      'Calcule la quantité et les alertes de stock bas';

  @override
  String get noTrackDesc => 'La quantité devient 0 et aucune alerte affichée';

  @override
  String get pricingTitle => 'Tarification';

  @override
  String get enterSalePrice => 'Entrez le prix de vente';

  @override
  String get baseStockType => 'Type de stock de base';

  @override
  String get stockTypePiece => 'Pièce (unité comme base)';

  @override
  String get stockTypeWeight => 'Poids (kilogramme comme base)';

  @override
  String get stockTypeClothing => 'Vêtements (couleurs & tailles)';

  @override
  String get colorsAndSizesTitle => 'Couleurs & Tailles';

  @override
  String get editColorsSizesBtn => 'Modifier les couleurs & tailles';

  @override
  String get salesUnitsBarcode => 'Unités de vente & code-barres';

  @override
  String get unitsDesc =>
      'L\'unité par défaut est gérée automatiquement avec le produit ; vous pouvez modifier les unités supplémentaires ou en ajouter une nouvelle.';

  @override
  String get defaultUnitTitle => 'Unité par défaut';

  @override
  String defaultUnitDesc(Object factor, Object name) {
    return '$name — facteur $factor';
  }

  @override
  String unitNumber(Object id) {
    return 'Unité #$id';
  }

  @override
  String get unitNameLabel => 'Nom de l\'unité';

  @override
  String get unitBarcodeOptional => 'Code-barres (optionnel)';

  @override
  String get unitSalePriceOptional => 'Prix de vente unitaire (optionnel)';

  @override
  String get unitMinPriceOptional => 'Prix minimum (optionnel)';

  @override
  String get addNewUnitBtn => 'Ajouter une nouvelle unité';

  @override
  String get newUnitTitle => 'Nouvelle unité';

  @override
  String get cancelTooltip => 'Annuler';

  @override
  String get stockTitle => 'Stock';

  @override
  String stockManagedByVariants(Object count) {
    return 'Le stock est géré via les couleurs & tailles. Total actuel : $count';
  }

  @override
  String get lowStockThreshold => 'Seuil d\'alerte de stock bas';

  @override
  String get saveChangesBtn => 'Enregistrer les modifications';

  @override
  String invoiceNumber(Object number) {
    return 'Facture #$number';
  }

  @override
  String get closeTooltip => 'Fermer';

  @override
  String get customerLabel => 'Client';

  @override
  String get dateLabel => 'Date';

  @override
  String get invoiceTypeLabel => 'Type de facture';

  @override
  String get recordedByLabel => 'Enregistrée par';

  @override
  String get customerIdLabel => 'ID client';

  @override
  String get returnStatusLabel => 'Retour';

  @override
  String get originalInvoiceLabel => 'Facture d\'origine';

  @override
  String get deliveryAddressLabel => 'Adresse de livraison';

  @override
  String get discountPercentLabel => 'Remise %';

  @override
  String get noItemsLabel => 'Aucun article';

  @override
  String quantityTimesPrice(Object price, Object qty) {
    return '$qty × $price IQD';
  }

  @override
  String get itemsSubtotalLabel => 'Sous-total des articles';

  @override
  String get invoiceDiscountLabel => 'Remise sur facture';

  @override
  String get loyaltyDiscountLabel => 'Remise fidélité';

  @override
  String get redeemedPointsLabel => 'Points échangés';

  @override
  String get earnedPointsLabel => 'Points gagnés';

  @override
  String get taxLabel => 'Taxe';

  @override
  String get advanceFirstPaymentLabel => 'Avance / Premier paiement';

  @override
  String get interestInfoSavedAtSale =>
      'Info d\'intérêt (enregistrée à la vente)';

  @override
  String get interestRatePercent => 'Taux d\'intérêt %';

  @override
  String get monthsCountLabel => 'Nombre de mois';

  @override
  String get financedAmountLabel => 'Montant financé';

  @override
  String get interestValueLabel => 'Valeur de l\'intérêt';

  @override
  String get totalWithInterestLabel => 'Total avec intérêt';

  @override
  String get suggestedMonthlyInstallment => 'Mensualité suggérée';

  @override
  String get selectInvoicePrompt =>
      'Sélectionnez une facture pour voir les détails';

  @override
  String get invoiceNotFoundMsg => 'Facture introuvable';

  @override
  String get iqdCurrency => 'IQD';

  @override
  String get customerNameLabel => 'Nom du client';

  @override
  String get saleTitle => 'Vente';

  @override
  String get parkInvoiceTooltip => 'Mettre la facture en attente';

  @override
  String get insufficientStockForUnit => 'Stock insuffisant pour cette unité.';

  @override
  String qtyAdjustedToStock(Object qty) {
    return 'Quantité ajustée à $qty en raison de la limite de stock.';
  }

  @override
  String serviceAlreadyAdded(Object name) {
    return 'Service déjà ajouté : $name';
  }

  @override
  String quantityIncreased(Object name) {
    return 'Quantité augmentée : $name';
  }

  @override
  String get serviceQtyFixed =>
      'La quantité du service est fixe et ne peut pas être modifiée.';

  @override
  String get okAction => 'OK';

  @override
  String get addAtLeastOneToSell =>
      'Ajoutez au moins un article pour finaliser la vente';

  @override
  String get addAtLeastOneToPark =>
      'Ajoutez au moins un article pour mettre la facture en attente';

  @override
  String get fillRequiredFields =>
      'Remplissez les champs requis : pour le crédit ou l\'échéancier, entrez le nom du client ; pour la livraison, entrez le nom et l\'adresse.';

  @override
  String get paymentTypeNotAllowed =>
      'Le type de paiement actuel n\'est pas autorisé. Vérifiez Factures > Paramètres Caisse ou sélectionnez espèces.';

  @override
  String discountExceedsMax(Object limit) {
    return 'La remise dépasse le maximum autorisé : $limit%';
  }

  @override
  String get creditInstallmentNeedCustomer =>
      'Pour la vente à crédit ou à échéancier : sélectionnez un client enregistré dans la liste sous le champ de nom (ou ajoutez-en un depuis Clients d\'abord).';

  @override
  String get loyaltyRedeemNeedCustomer =>
      'Pour échanger les points, sélectionnez le client dans la liste ou entrez un nom correspondant à un enregistrement client.';

  @override
  String installmentMinAdvanceError(Object amount, Object percent) {
    return 'Vente à échéancier : l\'avance doit être d\'au moins $percent% du total ($amount).';
  }

  @override
  String invoiceDebtCapExceeded(Object limit, Object remaining) {
    return 'Limite de dette par facture dépassée : le reste ($remaining) dépasse le plafond ($limit).';
  }

  @override
  String customerDebtCapExceeded(Object adding, Object existing, Object limit) {
    return 'Limite de dette client dépassée : reste actuel ≈ $existing, la facture ajoute $adding (dépasse $limit).';
  }

  @override
  String failedToSaveInvoice(Object error) {
    return 'Échec de l\'enregistrement de la facture : $error';
  }

  @override
  String invoiceImbalanceError(Object error) {
    return 'Déséquilibre de facture : $error';
  }

  @override
  String invoiceBalanceError(Object error) {
    return 'Échec de l\'enregistrement — $error. Vérifiez les articles et le total avant de réessayer.';
  }

  @override
  String get serviceOrderUpdateFailed =>
      'Attention : Facture enregistrée mais échec de la mise à jour du statut du ticket de service. Veuillez le vérifier manuellement.';

  @override
  String installmentPlanCreationFailed(Object error) {
    return 'Facture enregistrée mais échec de création du plan d\'échéancier : $error';
  }

  @override
  String get invoiceSavedWithPlan =>
      'Facture enregistrée et plan d\'échéancier créé — vous pouvez ajuster le calendrier';

  @override
  String get installmentFullyPaid =>
      'Facture à échéancier enregistrée et liée (aucune échéance restante car le montant est entièrement payé).';

  @override
  String get invoiceSavedSuccess =>
      'Facture enregistrée et inventaire/caisse mis à jour';

  @override
  String get failedToLoadParkedInvoice =>
      'Impossible de trouver la facture en attente';

  @override
  String failedToApplyParkedInvoice(Object error) {
    return 'Échec de l\'application de la facture en attente : $error';
  }

  @override
  String get clearCartTitle => 'Vider le panier ?';

  @override
  String get clearCartBody =>
      'Tous les articles seront supprimés de la facture en cours.';

  @override
  String get clearCartAction => 'Vider';

  @override
  String get returnDialogAction => 'Retour';

  @override
  String get productNotFoundTitle => 'Produit introuvable';

  @override
  String get productNotFoundBody =>
      'Ce code-barres n\'existe pas dans les produits. Voulez-vous ouvrir l\'écran d\'ajout de produit ?';

  @override
  String get addProductAction => 'Ajouter un produit';

  @override
  String productAddedSnack(Object name) {
    return 'Produit ajouté : $name';
  }

  @override
  String get searchCustomerHint => 'Recherchez à partir de la première lettre…';

  @override
  String get addNewCustomerTooltip =>
      'Ajouter un nouveau client sans quitter la vente';

  @override
  String get discountOnTotalSaleLabel => 'Remise sur le total de la vente %';

  @override
  String discountPercentHelper(Object limit) {
    return 'Maximum autorisé : $limit% — calculé à partir du prix minimum par article';
  }

  @override
  String get taxSectionLabel => 'Taxe';

  @override
  String get taxDescription =>
      'Entrez le montant de la taxe en dinars si applicable ; ajouté au total après la remise de facture.';

  @override
  String get taxAmountLabel => 'Montant de la taxe (IQD)';

  @override
  String get discountSectionLabel => 'Remise facture';

  @override
  String get advanceDownPaymentLabel => 'Avance / Acompte (IQD)';

  @override
  String get advancePaymentHelper =>
      'Déduit du total avant le calcul des intérêts et de l\'échéancier';

  @override
  String get installmentInterestLabel => 'Intérêt sur le montant à financer';

  @override
  String get interestRateHelper => 'Pourcentage du montant après avance';

  @override
  String get numberOfMonthsLabel => 'Nombre de mois';

  @override
  String get receivedAmountLabel => 'Montant reçu (IQD)';

  @override
  String get advanceDescription =>
      'Calculé sur le total après avance. Pour revue client — pas ajouté à la facture sauf si vous augmentez les prix manuellement.';

  @override
  String get priceSummaryCaptionNoDiscount =>
      'Résumé des chiffres et de l\'avance (le cas échéant), avant de passer aux détails du client.';

  @override
  String get priceSummaryCaptionWithDiscount =>
      'Résumé après remise et taxe, et avance (le cas échéant), avant de passer aux détails du client.';

  @override
  String get financedAmountBasis => 'Montant après avance (base d\'échéancier)';

  @override
  String get parkedInvoiceDialogHint =>
      'Enregistré localement sur cet appareil. Vous pouvez reprendre plus tard depuis Factures > Ventes en attente.';

  @override
  String get parkedInvoiceNameLabel =>
      'Nom pour identification (affiché dans la liste)';

  @override
  String get saveParkingAction => 'Enregistrer la mise en attente';

  @override
  String get quantityDialogTitle => 'Quantité';

  @override
  String get maxAction => 'Max';

  @override
  String get changeColorAction => 'Changer la couleur';

  @override
  String get filterListHint => 'Filtrer la liste…';

  @override
  String get sizesLabel => 'Tailles';

  @override
  String get selectColorFirstHint =>
      'Sélectionnez d\'abord une couleur pour afficher les tailles.';

  @override
  String priceMinLine(Object min, Object price) {
    return 'Prix $price · Min $min';
  }

  @override
  String itemTotalLine(Object total) {
    return 'Total : $total';
  }

  @override
  String get parkedInvoiceUpdated => 'Facture en attente mise à jour';

  @override
  String get parkedInvoiceCreated =>
      'Facture mise en attente — vous pouvez la reprendre depuis la liste des factures';

  @override
  String get barcodeScanTitle =>
      'Code-barres d\'article ou facture pour retour';

  @override
  String get productFallback => 'Produit';

  @override
  String get colorLabel => 'Couleur';

  @override
  String get colorSizeFallback => 'couleur/taille';

  @override
  String get sizeFallback => 'taille';

  @override
  String get unitFallback => 'unité';

  @override
  String get pieceUnitFallback => 'pièce';

  @override
  String availableQtyChipLabel(Object qty) {
    return 'Disponible : $qty';
  }

  @override
  String get cashDiscountNote => 'Déduit de la caisse.';

  @override
  String get installmentDiscountNote => 'Déduit du total de l\'échéancier.';

  @override
  String get returnScreenTitle => 'Retour';

  @override
  String returnInvoiceTitle(Object id) {
    return 'Retour — facture #$id';
  }

  @override
  String get vouchersNotReturnable =>
      'Les reçus ou paiements fournisseurs ne peuvent pas être traités depuis l\'écran de retour.';

  @override
  String get noInvoiceNumber => 'Pas de numéro de facture';

  @override
  String get invoiceNotFoundReturn => 'Facture introuvable';

  @override
  String get alreadyReturnedReturn =>
      'Cette facture est déjà enregistrée comme retournée';

  @override
  String get cashPaymentType => 'Espèces';

  @override
  String get creditPaymentTypeLabel => 'Crédit (différé)';

  @override
  String get installmentPaymentTypeLabel => 'Échéancier';

  @override
  String get deliveryPaymentType => 'Livraison';

  @override
  String get debtCollectionType => 'Reçu de recouvrement';

  @override
  String get installmentCollectionType => 'Reçu de paiement échéancier';

  @override
  String get supplierPaymentTypeLabel => 'Reçu de paiement fournisseur';

  @override
  String get cashReturnHint =>
      'Enregistré comme retrait de caisse du même montant.';

  @override
  String get installmentReturnHint =>
      'Met à jour le total du plan d\'échéancier ; enregistre un retrait de caisse si une avance est remboursée.';

  @override
  String get creditReturnHintLabel =>
      'Retour enregistré comme lié à l\'original ; vérifiez la liste des factures pour le statut de la dette.';

  @override
  String get notApplicableForType => 'Non applicable pour ce type.';

  @override
  String get selectAtLeastOneReturnQty =>
      'Sélectionnez une quantité de retour d\'au moins une';

  @override
  String returnSaveFailed(Object error) {
    return 'Échec de l\'enregistrement : $error';
  }

  @override
  String get returnUseBarcodeOnly =>
      'Pour les retours, utilisez uniquement le code-barres de la facture (ex. INV-12)';

  @override
  String get sameInvoiceDisplayed =>
      'C\'est la même facture actuellement affichée';

  @override
  String noInvoiceWithIdReturn(Object id) {
    return 'Aucune facture avec le numéro $id';
  }

  @override
  String get alreadyReturnedInvoiceReturn => 'Facture déjà retournée';

  @override
  String navigateToInvoiceTitle(Object id) {
    return 'Naviguer vers la facture #$id ?';
  }

  @override
  String get navigateToInvoiceBody =>
      'Les produits affichés seront remplacés par une autre facture.';

  @override
  String allItemsReturnedBanner(Object id) {
    return 'Tous les articles de la facture #$id ont été entièrement retournés dans des retours précédents. Rien à retourner.';
  }

  @override
  String get noItemsInInvoice => 'Aucun article dans cette facture';

  @override
  String get noItemsInInvoiceHint =>
      'Vérifiez le numéro de facture, ou utilisez le champ code-barres pour sélectionner une autre facture.';

  @override
  String get itemsSelectReturnQty =>
      'Articles — sélectionnez la quantité à retourner';

  @override
  String get fullReturnAction => 'Retour complet';

  @override
  String get switchInvoiceHint => 'Changer de facture (INV-numéro)';

  @override
  String get scanReceiptBarcodeHint =>
      'Scannez un autre code-barres de reçu puis Entrez';

  @override
  String originalInvoiceHashLabel(Object id) {
    return 'Facture originale #$id';
  }

  @override
  String dateLabelReturn(Object date) {
    return 'Date : $date';
  }

  @override
  String customerLabelReturn(Object name) {
    return 'Client : $name';
  }

  @override
  String originalSellerLabel(Object name) {
    return 'Vendeur original : $name';
  }

  @override
  String currentRecorderLabel(Object name) {
    return 'Enregistré actuellement par : $name';
  }

  @override
  String get fullyReturnedBadge => 'Entièrement retourné';

  @override
  String get partiallyReturnedBadge => 'Partiellement retourné';

  @override
  String soldQtyTimesPrice(Object price, Object qty) {
    return 'Vendu : $qty × $price';
  }

  @override
  String previouslyReturnedRemaining(Object remaining, Object returned) {
    return 'Précédemment retourné : $returned — Restant : $remaining';
  }

  @override
  String get returnQuantityLabel => 'Quantité à retourner';

  @override
  String get returnSummaryTitle => 'Résumé du retour';

  @override
  String get linesSubtotalLabel => 'Sous-total des lignes';

  @override
  String get invoiceDiscountShareLabel => 'Remise facture';

  @override
  String get taxShareLabel => 'Part de taxe';

  @override
  String get refundAmountLabel => 'Montant remboursé au client';

  @override
  String get confirmReturnAction => 'Confirmer le retour';

  @override
  String returnedInOtherInvoice(Object name, Object qty) {
    return '$name a été retourné dans une autre facture depuis l\'ouverture de cet écran. Restant : $qty. Rechargez et réessayez.';
  }

  @override
  String returnRecordedSuccess(Object hint, Object id, Object originalId) {
    return 'Retour #$id enregistré — lié à la facture originale #$originalId. $hint';
  }

  @override
  String get deleteReturnTitle => 'Supprimer le retour ?';

  @override
  String get deleteReturnConfirm =>
      'Êtes-vous sûr de vouloir supprimer ce retour ?';

  @override
  String get amountDueLabel => 'Montant dû (IQD)';

  @override
  String get discountOnTotalSaleTitle => 'Remise facture';

  @override
  String get advanceFirstPaymentShortLabel => 'Acompte';

  @override
  String get parkingInvoiceTitle => 'Mettre en attente la facture';

  @override
  String get parkedInvoiceSnackbarHint =>
      'Enregistré localement. Vous pouvez reprendre depuis Factures > En attente.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Maarey';

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
  String get aboutAppSubtitle => 'Version 1.0.0 · Maarey Store Manager';

  @override
  String get appName => 'Maarey Store Manager';

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
      'Exemple : chaque 10 000 FDJ rapporte 10 points selon la règle choisie.';

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
      'Exemple : une facture de 100 000 FDJ à laquelle un pourcentage de taxe déterminé est ajouté.';

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
      'Exemple : vous accordez une remise globale de 5 000 FDJ sur une grosse facture.';

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
      'Exemple : un appareil d\'une valeur de 600 000 FDJ payé en 6 mensualités.';

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
    return 'Vente $price FDJ';
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
    return '$count articles · ≈ $total FDJ';
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
    return '$amount FDJ';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count articles · remise $discount FDJ';
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
  String get emailNotConfirmed =>
      'Email non confirmé. Veuillez vérifier votre boîte de réception.';

  @override
  String get tooManyRequests =>
      'Trop de tentatives. Veuillez patienter quelques minutes puis réessayer.';

  @override
  String get networkError =>
      'Erreur réseau. Veuillez vérifier votre connexion et réessayer.';

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
  String get welcomeToMaarey => 'Bienvenue sur Maarey';

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
  String get allRightsReserved => 'Maarey v2.0 — جميع الحقوق محفوظة';

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
      'للحصول على مفتاح ترخيص، تواصل مع فريق Maarey.';

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
      '١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز';

  @override
  String get subscribeStepsLegacy =>
      '١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»';

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
  String get currencyLabel => 'Fdj';

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
  String get iqd => 'FDJ';

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
    return '$price FDJ';
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
    return '$qty × $price FDJ';
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
  String suggestedMonthlyInstallment(Object months) {
    return 'Mensualité suggérée ($months mois)';
  }

  @override
  String get selectInvoicePrompt =>
      'Sélectionnez une facture pour voir les détails';

  @override
  String get invoiceNotFoundMsg => 'Facture introuvable';

  @override
  String get iqdCurrency => 'FDJ';

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
      'Entrez le montant de la taxe en francs si applicable ; ajouté au total après la remise de facture.';

  @override
  String get taxAmountLabel => 'Montant de la taxe (FDJ)';

  @override
  String get discountSectionLabel => 'Remise facture';

  @override
  String get advanceDownPaymentLabel => 'Avance / Acompte (FDJ)';

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
  String get receivedAmountLabel => 'Montant reçu (FDJ)';

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
  String get unitFallback => 'Unité';

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
  String get amountDueLabel => 'Montant dû (FDJ)';

  @override
  String get discountOnTotalSaleTitle => 'Remise facture';

  @override
  String get advanceFirstPaymentShortLabel => 'Acompte';

  @override
  String get parkingInvoiceTitle => 'Mettre en attente la facture';

  @override
  String get parkedInvoiceSnackbarHint =>
      'Enregistré localement. Vous pouvez reprendre depuis Factures > En attente.';

  @override
  String get pieceFallback => 'Pièce';

  @override
  String get unnamedProduct => 'Produit sans nom';

  @override
  String get newProductFallback => 'Nouveau produit';

  @override
  String qtyAdjustedToAvailableStock(Object qty) {
    return 'Quantité ajustée à $qty en raison de la limite de stock disponible.';
  }

  @override
  String stockNotAvailableDetails(Object max) {
    return 'Stock non disponible. Disponible à la vente (base stock) : $max uniquement (après comptabilisation des quantités dans les autres lignes).';
  }

  @override
  String get noStockAvailableForProduct =>
      'Aucun stock disponible pour ce produit.';

  @override
  String stockUnavailableAvailableIs(Object max) {
    return 'Stock indisponible. Disponible à la vente (base stock) : $max uniquement.';
  }

  @override
  String newLineAddedSnack(Object name) {
    return 'Nouvelle ligne ajoutée : $name';
  }

  @override
  String get installmentPlanTitle => 'Plan de versements';

  @override
  String get installmentCalcNote =>
      'Calculé sur « Total après acompte ». À vérifier avec le client — non ajouté à la facture sauf si vous augmentez les prix manuellement.';

  @override
  String get advanceDownPaymentHelper =>
      'Déduit du total avant calcul des intérêts et de la mensualité.';

  @override
  String get monthsSuffix => 'mois';

  @override
  String interestAmountLabel(Object pct) {
    return 'Montant des intérêts ($pct%)';
  }

  @override
  String get advanceEqualsTotalHint =>
      'L\'acompte est égal au total — aucun montant à verser. Réduisez l\'acompte pour voir les intérêts et la mensualité.';

  @override
  String parkInvoiceWithCount(Object count) {
    return 'Mettre en attente — en attente ($count)';
  }

  @override
  String get parkInvoiceOtherCustomer =>
      'Mettre en attente — servir un autre client';

  @override
  String payButtonLabel(Object amount) {
    return 'Payer — $amount';
  }

  @override
  String get swipeToResizeHint =>
      'Glisser pour modifier la largeur de la barre latérale';

  @override
  String get checkoutStepHintWithPayment =>
      'Lignes de facture, quantités et prix — puis vérifier les détails du prix et le mode de paiement.';

  @override
  String get checkoutStepHintNoPayment =>
      'Lignes de facture, quantités et prix — puis passer à la remise et la taxe.';

  @override
  String get productsTitle => 'Produits';

  @override
  String get barcodeFieldHint =>
      'Ajouter un article par code-barres, ou ouvrir un retour en scannant le numéro de facture (INV-)';

  @override
  String get scannerTabLabel => 'Scanner';

  @override
  String get noItemsYetWithScanner =>
      'Aucun article pour le moment.\nScannez le code-barres ci-dessus ou ajoutez depuis la recherche.\nRecherchez un produit ou scannez le code-barres pour ajouter.';

  @override
  String get noItemsYetNoScanner =>
      'Aucun article pour le moment.\nAjoutez des produits depuis la recherche.\nRecherchez un produit ou scannez le code-barres pour ajouter.';

  @override
  String get saleSummaryTitle => 'Résumé de la vente';

  @override
  String get discountTaxNote =>
      'La remise et la taxe sont appliquées au total de la facture (et non par article).';

  @override
  String maxDiscountAllowedHint(Object max) {
    return 'Maximum autorisé : $max% — calculé à partir du prix minimum par article.';
  }

  @override
  String get taxHelperHint =>
      'Entrez le montant de la taxe en francs si applicable ; ajouté au sous-total après remise facture.';

  @override
  String get priceDetailStepHintWithPayment =>
      'Résultat des chiffres et du premier versement le cas échéant, avant de passer aux données client.';

  @override
  String get priceDetailStepHintNoPayment =>
      'Résultat des chiffres après remise et taxe, et du premier versement le cas échéant, avant de passer aux données client.';

  @override
  String get priceDetailsTitle => 'Détails du prix';

  @override
  String get amountBreakdownTitle => 'Ventilation des montants';

  @override
  String get originalAmountLabel => 'Montant original (somme des articles)';

  @override
  String get invoiceDiscountAmountLabel => 'Montant de la remise facture';

  @override
  String get subtotalAfterDiscountLabel =>
      'Sous-total après remise (avant taxe)';

  @override
  String get iqdCurrencySymbol => 'FDJ';

  @override
  String get grandTotalLabel => 'Total général';

  @override
  String get cashLabel => 'Espèces';

  @override
  String get creditLabel => 'Crédit';

  @override
  String get installmentLabel => 'Versement';

  @override
  String get deliveryLabel => 'Livraison';

  @override
  String selectPaymentMethodHint(Object options) {
    return 'Choisissez $options, puis complétez les données client et les champs liés au type de paiement.';
  }

  @override
  String get customerAndPaymentTitle => 'Client & Mode de paiement';

  @override
  String get paymentMethodLabel => 'Mode de paiement';

  @override
  String get customerNameRequiredForDelivery =>
      'Nom du client requis pour la livraison';

  @override
  String get requiredForCreditInstallment => 'Requis pour crédit/versement';

  @override
  String get addNewCustomerMessage =>
      'Ajouter un nouveau client sans quitter la vente';

  @override
  String get deliveryAddressWithMapQR =>
      'Adresse de livraison et emplacement (QR cartes)';

  @override
  String get buyerAddressWithMapQR =>
      'Adresse de l\'acheteur (QR pour cartes sur le reçu)';

  @override
  String get addressMapDescriptionOptional =>
      'Optionnel — description ou adresse affichée dans Google Maps lors du scan du code';

  @override
  String get addressMapRequired =>
      'Requis — le QR cartes est imprimé si du texte est présent ; écrivez l\'adresse de livraison clairement';

  @override
  String get qrOpensMapsOnScan => 'Le QR ouvre les cartes lors du scan';

  @override
  String get deliveryAddressRequired => 'L\'adresse de livraison est requise';

  @override
  String get loyaltyPointsRequiresCustomer =>
      'Pour utiliser les points : sélectionnez un client enregistré dans la liste suggérée.';

  @override
  String customerLoyaltyBalance(Object balance) {
    return 'Solde de points de fidélité du client : $balance';
  }

  @override
  String loyaltyPointsToRedeem(Object max) {
    return 'Points à échanger (max $max)';
  }

  @override
  String get deliveryInstruction =>
      'Pour la livraison : entrez le nom du client et l\'adresse de livraison (les deux requis). Des suggestions de noms apparaissent de la base clients pendant la saisie.';

  @override
  String get creditInstallmentCustomerTip =>
      'Important : Pour crédit et versement, cliquez sur le nom du client dans la liste suggérée pour lier la vente à sa carte (taper le nom manuellement ne suffit pas s\'il ne correspond pas exactement à un enregistrement).';

  @override
  String get hideDetailsLabel => 'Masquer les détails';

  @override
  String get priceDiscountDetailsLabel => 'Détails du prix et de la remise';

  @override
  String priceAndMinLabel(Object min, Object price) {
    return 'Prix $price · Min $min';
  }

  @override
  String lineTotalLabel(Object total) {
    return 'Total : $total';
  }

  @override
  String get unitSellPriceLabel => 'Prix de vente (par unité)';

  @override
  String get lineTotalBeforeDiscount =>
      'Total de la ligne avant remise facture';

  @override
  String get lineDiscountShare => 'Part de la remise facture pour cette ligne';

  @override
  String get lineTotalAfterDiscount =>
      'Total de la ligne après remise facture (cette ligne)';

  @override
  String get percentageDiscountDistributionNote =>
      'La remise en pourcentage est répartie sur les lignes selon la contribution de chaque ligne au total des articles.';

  @override
  String get quantityKgLabel => 'Quantité (kilogrammes)';

  @override
  String get quantityHintWeight => 'ex. : 0.25 ou 1.5 ou 3';

  @override
  String get quantityHintPiece => 'ex. : 2';

  @override
  String get quantityErrorWeight =>
      'Entrez une quantité supérieure à 0 (décimales autorisées pour le poids).';

  @override
  String get quantityErrorPiece => 'Entrez un nombre entier 1 ou plus';

  @override
  String get itemFallbackShort => 'Article';

  @override
  String get payloadEmptyOrNotText =>
      'La charge est vide ou n\'est pas du texte';

  @override
  String get payloadNotValidJson => 'La charge n\'est pas un objet JSON valide';

  @override
  String get payloadNoVersionField =>
      'Pas de champ de version (v) dans la charge';

  @override
  String payloadUnsupportedVersion(Object ver) {
    return 'La version de charge $ver n\'est pas supportée (attendu 1)';
  }

  @override
  String decryptionError(Object error) {
    return 'Erreur de déchiffrement : $error';
  }

  @override
  String failedToOpenParkedInvoice(Object reason) {
    return 'Échec de l\'ouverture de la facture en attente : $reason';
  }

  @override
  String get unknownReason => 'raison inconnue';

  @override
  String invoiceWithItemCount(Object count) {
    return 'Facture ($count articles)';
  }

  @override
  String get invoiceParkedMessage =>
      'Facture mise en attente — vous pouvez la reprendre depuis la liste des factures';

  @override
  String get requiredFieldsMessage =>
      'Remplissez les champs requis : pour crédit ou versement entrez le nom du client, pour livraison entrez le nom et l\'adresse. Vérifiez les champs surlignés en rouge.';

  @override
  String get paymentMethodNotAllowed =>
      'Le mode de paiement actuel n\'est pas autorisé — vérifiez « Factures → Paramètres Caisse » ou choisissez espèces.';

  @override
  String discountExceedsMaximum(Object max) {
    return 'Le pourcentage de remise dépasse le maximum. La limite est de $max%';
  }

  @override
  String get creditInstallmentMustSelectCustomer =>
      'Pour une vente à crédit ou en versement : sélectionnez un client enregistré dans la liste suggérée sous le champ nom (ou ajoutez depuis « Clients » d\'abord) pour lier la facture à sa carte.';

  @override
  String get loyaltyRedeemMustSelectCustomer =>
      'Pour échanger les points, sélectionnez le client dans la liste ou entrez un nom correspondant exactement à un enregistrement.';

  @override
  String invoiceDebtLimitExceeded(Object cap, Object rem) {
    return 'Limite de dette facture : le reste ($rem) dépasse le plafond $cap. Ajustez le total, le montant payé, ou « Dettes → Paramètres de dette ».';
  }

  @override
  String customerDebtLimitExceeded(Object cap, Object existing, Object rem) {
    return 'Limite de dette client : total restant ≈ $existing, et cette facture ajoute $rem (dépasse $cap).';
  }

  @override
  String get debtLimitActionHint =>
      'Liez le client depuis la liste, réduisez le montant, ou vérifiez les paramètres de dette.';

  @override
  String invoiceSaveFailed(Object error) {
    return 'Échec de l\'enregistrement de la facture — $error. Vérifiez les articles et le total avant de réessayer.';
  }

  @override
  String get maintenanceTicketUpdateFailed =>
      'Note : La facture a été enregistrée mais la mise à jour automatique du ticket de maintenance a échoué. Veuillez le vérifier manuellement.';

  @override
  String get installmentPlanCreated =>
      'Facture enregistrée et plan de versement créé — vous pouvez ajuster l\'échéancier ou revenir en arrière';

  @override
  String get installmentPlanSavedNoRemaining =>
      'Facture de versement enregistrée et liée à un plan (aucun versement restant car le montant est intégralement collecté).';

  @override
  String get barcodeOrInvoiceForReturn =>
      'Code-barres article ou facture pour retour';

  @override
  String get alreadyReturned => 'Cette facture a déjà été retournée';

  @override
  String invoiceNumberLabel(Object id) {
    return 'Facture #$id';
  }

  @override
  String openReturnScreenConfirm(Object total) {
    return 'Ouvrir l\'écran de retour (articles uniquement) ?\nTotal original : $total';
  }

  @override
  String get returnButton => 'Retour';

  @override
  String get selectColorAndSize => 'Sélectionner Couleur & Taille';

  @override
  String get cannotChangeQtyBeforeSelection =>
      'Impossible de modifier la quantité avant la sélection';

  @override
  String get loadingColorsAndSizes => 'Chargement des couleurs et tailles…';

  @override
  String get colorsTitle => 'Couleurs';

  @override
  String availableLabel(Object rem) {
    return 'Disponible : $rem';
  }

  @override
  String get sizesTitle => 'Tailles';

  @override
  String get currentlySelected => 'Sélection actuelle';

  @override
  String get colorOrSize => 'Couleur/Taille';

  @override
  String get selectColorFirst =>
      'Sélectionnez d\'abord une couleur pour afficher les tailles.';

  @override
  String get parkInvoiceDialogTitle => 'Mettre en attente la facture';

  @override
  String get parkInvoiceDescription =>
      'Enregistré localement sur cet appareil. Vous pouvez reprendre la vente plus tard depuis Factures → En attente.';

  @override
  String get saveParkButton => 'Enregistrer en attente';

  @override
  String get barcodeScannerTitle => 'Scanner code-barres';

  @override
  String get flashTooltip => 'Flash';

  @override
  String get switchCameraTooltip => 'Changer de caméra';

  @override
  String get scanToAddAuto =>
      'Scannez — les articles seront ajoutés automatiquement';

  @override
  String get passOriginalInvoiceOrId => 'Passez originalInvoice ou invoiceId';

  @override
  String get deductedFromVault => 'Déduit de la caisse.';

  @override
  String get deductedFromInstallmentTotal => 'Déduit du total des versements.';

  @override
  String get switchInvoiceLabel => 'Changer de facture (INV-numéro)';

  @override
  String get scanAnotherReceiptHint => 'Scannez un autre reçu puis Entrez';

  @override
  String get barcodeNotFoundAddNew =>
      'Ce code-barres n\'existe pas dans les produits. Voulez-vous ouvrir l\'écran d\'ajout de produit ?';

  @override
  String get receiptPrintFailed => 'Échec de l\'impression du reçu';

  @override
  String get royalNavyScheme => 'Bleu marine — Or — Ivoire (défaut)';

  @override
  String get midnightScheme => 'Minuit — Argent — Gris clair';

  @override
  String get oceanScheme => 'Océan — Or sable — Crémeux';

  @override
  String get forestScheme => 'Forêt — Bronze — Menthe claire';

  @override
  String get wineScheme => 'Vin — Or chaud — Blanc rosé';

  @override
  String get charcoalScheme => 'Charbon — Ambre — Blanc bleuté';

  @override
  String get slateScheme => 'Ardoise — Bleu ciel — Blanc froid';

  @override
  String get copperScheme => 'Cuivre — Cuivre rouge — Sable';

  @override
  String get customScheme => 'Personnalisé — Studio de couleurs interactif';

  @override
  String get appAppearance => 'Apparence de l\'application';

  @override
  String get posSettings => 'Paramètres de caisse';

  @override
  String get paymentMethodsSection => 'Modes de paiement';

  @override
  String get creditSaleTitle => 'Vente à crédit';

  @override
  String get creditSaleSubtitle =>
      'Désactiver masque l\'option «crédit» sur l\'écran de vente.';

  @override
  String get installmentSaleTitle => 'Vente en versements';

  @override
  String get installmentSaleSubtitle =>
      'Désactiver masque l\'option «versement».';

  @override
  String get deliverySaleTitle => 'Vente avec livraison';

  @override
  String get deliverySaleSubtitle => 'Désactiver masque l\'option «livraison».';

  @override
  String get cashCustomerSection => 'Client en vente en espèces';

  @override
  String get showBuyerAddressCashTitle =>
      'Afficher le champ adresse de l\'acheteur en mode espèces';

  @override
  String get showBuyerAddressCashDesc =>
      'Affiché uniquement si «QR pour adresse acheteur» est activé. Désactivé, le champ reste pour la livraison.';

  @override
  String get stockInSaleSection => 'Stock en vente';

  @override
  String get preventOversellTitle =>
      'Empêcher la vente quand le solde affiché est dépassé';

  @override
  String get preventOversellDesc =>
      'Activé : la quantité ne dépasse pas le stock. Désactivé : la vente est autorisée même si le solde est négatif, et le négatif est annulé à la sauvegarde.';

  @override
  String get discountTaxSection => 'Remise & Taxe';

  @override
  String get invoiceDiscountPercentTitle =>
      'Champ remise facture (pourcentage)';

  @override
  String get invoiceDiscountPercentSubtitle =>
      'Désactivé : la remise est fixée à 0 et le champ est masqué.';

  @override
  String get taxFieldTitle => 'Champ taxe';

  @override
  String get taxFieldSubtitle =>
      'Désactivé : la taxe est fixée à 0 et le champ est masqué.';

  @override
  String get brandColorsTitle =>
      'Couleurs d\'identité de marque au lieu du thème';

  @override
  String get brandColorsDesc =>
      'Désactivé : le thème général (clair/sombre) reste sur toutes les pages, avec la même forme de coins ci-dessous.';

  @override
  String get colorSchemesTitle => 'Palettes de couleurs';

  @override
  String get colorSchemesDesc =>
      'Toutes les palettes professionnelles sont prêtes ; «Personnalisé» ouvre un studio de couleurs interactif (teinte, saturation, luminosité, prêt, HEX) pour chaque couleur.';

  @override
  String get primaryColorLabel =>
      'Couleur principale (barre de titre & boutons)';

  @override
  String get accentColorLabel => 'Couleur d\'accent (or/en vedette)';

  @override
  String get lightSurfaceLabel => 'Arrière-plan des surfaces claires';

  @override
  String get darkSurfaceLabel => 'Arrière-plan surfaces mode sombre';

  @override
  String get saleCardShapeTitle => 'Forme des cartes de vente';

  @override
  String get saleCardShapeDesc =>
      'Aperçu simple à côté de chaque option — à quoi ressemblent les coins et les lignes de produits.';

  @override
  String get sharpCornersTitle => 'Coins pointus';

  @override
  String get roundedCornersTitle => 'Coins arrondis';

  @override
  String get fontAndSizeTitle => 'Police et taille de l\'application';

  @override
  String get fontAndSizeDesc =>
      'Appliqué à tous les écrans et menus, multiplié par la taille de police du système.';

  @override
  String get fontStyleTitle => 'Style de police';

  @override
  String get fontSizeTitle => 'Taille de police';

  @override
  String get textColorTitle => 'Couleur du texte';

  @override
  String get textColorDesc =>
      'Optionnel — studio de couleurs complet pour chaque mode (clair/sombre) ; appliqué au texte principal et aux listes.';

  @override
  String get textLightLabel => 'Couleur texte — Mode clair';

  @override
  String get textLightDesc =>
      'Actif en thème clair. Appuyez pour modifier, ou «Défaut» pour effacer la couleur personnalisée.';

  @override
  String get textDarkLabel => 'Couleur texte — Mode sombre';

  @override
  String get textDarkDesc =>
      'Actif en thème sombre. Appuyez pour modifier, ou «Défaut» pour effacer la couleur personnalisée.';

  @override
  String get resetTextColorLabel =>
      'Réinitialiser la couleur du texte pour les deux modes';

  @override
  String get royalNavyDefaultDesc =>
      'Référence des couleurs «Bleu marine» par défaut — les autres palettes ci-dessus.';

  @override
  String get wideSaleLayoutTitle =>
      'Disposition de l\'espace de vente (écran large)';

  @override
  String get wideSaleLayoutSwitchTitle =>
      'Diviser l\'écran de vente en deux colonnes (écran large)';

  @override
  String get wideSaleLayoutSwitchDesc =>
      'Désactivé : «Nouvelle vente» revient à une seule colonne même sur écran large. Le ratio est sauvegardé.';

  @override
  String get wideSaleLayoutDesc =>
      'Quand la fenêtre fait 700+ points de large et n\'est pas un écran téléphone, l\'écran «Nouvelle vente» se divise en deux colonnes.';

  @override
  String productsColumnRatioLabel(Object products, Object summary) {
    return 'Colonne produits : $products — Résumé & client : $summary';
  }

  @override
  String productsSummaryLabel(Object products, Object summary) {
    return 'Produits $products · Reste de l\'écran $summary';
  }

  @override
  String get wideSalePreviewLabel =>
      'Aperçu en direct (petit espace — comment la disposition change) :';

  @override
  String get wideSaleDragHint =>
      'Dans l\'écran «Nouvelle vente» en large : survolez la fine bande entre les colonnes et glissez horizontalement.';

  @override
  String get saleSpaceLayoutLabel => 'Disposition de l\'espace de vente';

  @override
  String get phoneLayoutDesc =>
      'Sur cette taille (téléphone), «Nouvelle vente» s\'affiche toujours en colonne unique.';

  @override
  String get appearanceNote =>
      'Les couleurs et coins s\'appliquent immédiatement. Les politiques de vente restent dans «Paramètres de caisse».';

  @override
  String get posNote =>
      'Les politiques de vente s\'appliquent immédiatement. L\'apparence est configurée dans «Apparence de l\'application».';

  @override
  String get resetAppearanceTitle => 'Restaurer l\'apparence par défaut ?';

  @override
  String get resetAppearanceDesc =>
      'Rétablira la police, la taille du texte, les couleurs personnalisées, la palette, les coins et l\'identité de marque. Les politiques de vente ne sont pas affectées.';

  @override
  String get cancelLabel => 'Annuler';

  @override
  String get restoreLabel => 'Restaurer';

  @override
  String get appearanceRestoredSnack =>
      'Paramètres d\'apparence par défaut restaurés';

  @override
  String get resetAppearanceLog =>
      'Restaurer l\'apparence par défaut (police, couleurs, palette, coins)';

  @override
  String get summaryCustomerLabel => 'Résumé\n& client';

  @override
  String customColorLabel(Object hex) {
    return '$hex — Personnalisé';
  }

  @override
  String get themeDefaultLabel => 'Défaut du thème';

  @override
  String get colorStudioDesc =>
      'Boîte de saturation/luminosité, barre de spectre, couleurs prêtes, ou HEX — puis confirmer.';

  @override
  String get appIdentityTitle => 'Identité de l\'application';

  @override
  String get appIdentityDesc =>
      'Configurez les couleurs d\'identité et la forme des coins pour l\'application entière. Les politiques de paiement, stock et remise restent dans «Paramètres de caisse».';

  @override
  String get saleControlTitle => 'Contrôle centralisé des ventes';

  @override
  String get saleControlDesc =>
      'Activez ou désactivez les modes de paiement et champs financiers sans modifier le code. L\'apparence est configurée séparément.';

  @override
  String get printSettingsSaved => 'Paramètres d\'impression enregistrés';

  @override
  String printSettingsSaveError(Object error) {
    return 'Erreur d\'enregistrement : $error';
  }

  @override
  String get testCustomerName => 'Client test';

  @override
  String get testProductName => 'Produit 1';

  @override
  String get testEmployee => 'Employé';

  @override
  String get testAddress => 'Bagdad, Rue test';

  @override
  String get printingAndDocsTitle => 'Impression & Documents';

  @override
  String get saveButton => 'Enregistrer';

  @override
  String get salesReceiptSection => 'Reçu de vente';

  @override
  String get defaultPaperSize => 'Taille de papier par défaut';

  @override
  String get thermal58mm => 'Thermique 58mm (étroit)';

  @override
  String get thermal80mm => 'Thermique 80mm (standard)';

  @override
  String get thermal76x297mm => 'Thermique 76×297mm (reçu)';

  @override
  String get showTransactionBarcodeTitle =>
      'Afficher le code-barres de transaction';

  @override
  String get transactionBarcodeDesc => 'CODE128 — lu rapidement par le scanner';

  @override
  String get showQrCodeTitle => 'Afficher le code QR';

  @override
  String get qrCodeDesc =>
      'Résumé texte pour le client — recommandé pour la taxe et la vérification';

  @override
  String get qrBuyerAddressTitle => 'QR pour l\'adresse acheteur (cartes)';

  @override
  String get qrBuyerAddressDesc =>
      'Quand activé, affiche le champ adresse acheteur et imprime un QR qui ouvre la position sur Google Maps';

  @override
  String get headerLineLabel =>
      'Ligne au-dessus du titre \"Reçu de vente\" (nom du magasin)';

  @override
  String get footerLineLabel =>
      'Pied de page supplémentaire (téléphone, conditions, remerciements)';

  @override
  String get barcodeLabelsSection => 'Paramètres code-barres & étiquettes';

  @override
  String get storeDataTitle => 'Données du magasin';

  @override
  String get storeDataDesc =>
      'Depuis les paramètres — peut être lié automatiquement au reçu';

  @override
  String get storeDataHint =>
      'Utilisez le champ \"Nom du magasin\" ci-dessus ou la fiche données du magasin';

  @override
  String get previewReceiptButton => 'Aperçu reçu test';

  @override
  String get saveSettingsButton => 'Enregistrer les paramètres en base';

  @override
  String get printSettingsDesc =>
      'Données stockées dans print_settings et appliquées automatiquement lors de l\'impression.';

  @override
  String get professionalPrintCenter => 'Centre d\'impression professionnel';

  @override
  String get printCenterDesc =>
      'Configure les tailles thermique et A4, le contenu du reçu, et les liens inventaire — tout est sauvegardé localement.';

  @override
  String get close => 'Fermer';

  @override
  String get loading => 'Chargement...';

  @override
  String get actions => 'Actions';

  @override
  String get confirm => 'Confirmer';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get next => 'Suivant';

  @override
  String get total => 'Total';

  @override
  String get count => 'Nombre';

  @override
  String get status => 'Statut';

  @override
  String get date => 'Date';

  @override
  String get amount => 'Montant';

  @override
  String get number => 'Numéro';

  @override
  String get details => 'Détails';

  @override
  String get name => 'Nom';

  @override
  String get email => 'Email';

  @override
  String get notes => 'Notes';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get show => 'Afficher';

  @override
  String get hide => 'Masquer';

  @override
  String get filter => 'Filtrer';

  @override
  String get sort => 'Trier';

  @override
  String get refresh => 'Actualiser';

  @override
  String get export => 'Exporter';

  @override
  String get print => 'Imprimer';

  @override
  String get copy => 'Copier';

  @override
  String get active => 'Actif';

  @override
  String get inactive => 'Inactif';

  @override
  String get pending => 'En attente';

  @override
  String get completed => 'Terminé';

  @override
  String get cancelled => 'Annulé';

  @override
  String get paid => 'Payé';

  @override
  String get unpaid => 'Impayé';

  @override
  String get cash => 'Espèces';

  @override
  String get credit => 'Crédit';

  @override
  String get installment => 'Versement';

  @override
  String get delivery => 'Livraison';

  @override
  String get customersTitle => 'Clients';

  @override
  String get customersManagement => 'Gestion complète des clients';

  @override
  String get addCustomer => 'Ajouter un client';

  @override
  String get addNewCustomer => 'Ajouter un nouveau client';

  @override
  String get editCustomer => 'Modifier les données du client';

  @override
  String get deleteCustomer => 'Supprimer le client';

  @override
  String confirmDeleteCustomer(Object name) {
    return 'Supprimer \"$name\" ?';
  }

  @override
  String get customerNameHint => 'Entrez le nom du client';

  @override
  String get phoneHint => 'Entrez le numéro de téléphone';

  @override
  String get emailHint => 'Entrez l\'adresse email';

  @override
  String get addressLabel => 'Adresse';

  @override
  String get addressHint => 'Entrez l\'adresse';

  @override
  String get totalCustomers => 'Total clients';

  @override
  String customerCount(Object count) {
    return 'Clients : $count';
  }

  @override
  String get noCustomersYet => 'Aucun client pour le moment';

  @override
  String get addFirstCustomer => 'Ajouter le premier client';

  @override
  String get loyaltyPoints => 'Points de fidélité';

  @override
  String get customerSince => 'Client depuis';

  @override
  String get lastActivity => 'Dernière activité';

  @override
  String get totalPurchases => 'Total achats';

  @override
  String get contactAdded => 'Contact ajouté';

  @override
  String get contactDeleted => 'Contact supprimé';

  @override
  String get contactUpdated => 'Contact mis à jour';

  @override
  String get addContact => 'Ajouter un contact';

  @override
  String get deleteContact => 'Supprimer le contact';

  @override
  String confirmDeleteContact(Object name) {
    return 'Supprimer \"$name\" du système ?';
  }

  @override
  String get contactType => 'Type de contact';

  @override
  String get primaryContact => 'Contact principal';

  @override
  String get secondaryContact => 'Contact secondaire';

  @override
  String get financialDetails => 'Détails financiers';

  @override
  String get fullDebtScreen => 'Écran dettes complet (règlement et détails)';

  @override
  String get creditSales => 'Ventes à crédit (dette)';

  @override
  String get creditSalesDesc =>
      'Chaque facture liée à un reçu de vente — cliquez pour voir les détails';

  @override
  String get noCreditInvoices =>
      'Aucune facture «crédit» liée à ce client. Utilisez la vente à crédit en sélectionnant le client depuis';

  @override
  String get installments => 'Versements';

  @override
  String get installmentSales => 'Ventes en versements';

  @override
  String get installmentSalesDesc =>
      'Factures avec plans de versement — cliquez pour voir les détails';

  @override
  String get noInstallmentInvoices =>
      'Aucune facture de versement liée à ce client.';

  @override
  String get totalDebt => 'Dette totale';

  @override
  String get totalPaid => 'Total payé';

  @override
  String get remainingBalance => 'Solde restant';

  @override
  String get settleDebt => 'Régler la dette';

  @override
  String get debtHistory => 'Historique des dettes';

  @override
  String get paymentHistory => 'Historique des paiements';

  @override
  String get saleReceipt => 'Reçu de vente';

  @override
  String get viewDetails => 'Voir les détails';

  @override
  String get amountDue => 'Montant dû';

  @override
  String get amountPaid => 'Montant payé';

  @override
  String get dueDate => 'Date d\'échéance';

  @override
  String get paymentDate => 'Date de paiement';

  @override
  String get paymentMethod => 'Mode de paiement';

  @override
  String get remaining => 'Restant';

  @override
  String get settled => 'Réglé';

  @override
  String get overdue => 'En retard';

  @override
  String get dueSoon => 'Bientôt dû';

  @override
  String get customerForm => 'Formulaire client';

  @override
  String get saveCustomer => 'Enregistrer le client';

  @override
  String get updateCustomer => 'Mettre à jour le client';

  @override
  String get customerSaved => 'Client enregistré avec succès';

  @override
  String get customerUpdated => 'Client mis à jour avec succès';

  @override
  String get customerDeleted => 'Client supprimé avec succès';

  @override
  String failedToSave(Object error) {
    return 'Échec de l\'enregistrement : $error';
  }

  @override
  String get phoneRequired => 'Le numéro de téléphone est requis';

  @override
  String get emailInvalid => 'Adresse email invalide';

  @override
  String get duplicatePhone => 'Ce numéro de téléphone existe déjà';

  @override
  String get duplicateEmail => 'Cet email existe déjà';

  @override
  String get addAnotherPhone => 'Ajouter un autre numéro';

  @override
  String get loyaltyPointsLabel => 'Points de fidélité';

  @override
  String get customerType => 'Type de client';

  @override
  String get retail => 'Détail';

  @override
  String get wholesale => 'Gros';

  @override
  String get lastUpdateNow => 'Dernière mise à jour : à l\'instant — F5';

  @override
  String lastUpdateHours(Object hours) {
    return 'Dernière mise à jour : il y a environ ${hours}h — F5';
  }

  @override
  String lastUpdateMinutes(Object minutes) {
    return 'Dernière mise à jour : il y a environ ${minutes}min — F5';
  }

  @override
  String totalCustomersCount(Object displayed, Object total) {
    return 'Total clients : $total · Affichés : $displayed';
  }

  @override
  String get closePanelEsc => 'Fermer le panneau (Échap)';

  @override
  String get salesByCash => 'Ventes en espèces';

  @override
  String get salesByCredit => 'Ventes à crédit';

  @override
  String get totalSales => 'Total ventes';

  @override
  String get currentBalance => 'Solde actuel';

  @override
  String get reportsTitle => 'Rapports';

  @override
  String get reportsSections => 'Sections de rapports';

  @override
  String get defaultPeriod => 'Période par défaut';

  @override
  String get exportToExcel => 'Exporter (copier vers Excel)';

  @override
  String get printReport => 'Imprimer rapport de période';

  @override
  String get salesOverview => 'Aperçu des ventes';

  @override
  String get financialGauges => 'Indicateurs de performance';

  @override
  String get gaugesConsistent =>
      'Cohérent avec les ratios du diagramme circulaire et du tableau';

  @override
  String get gaugesRelative =>
      'Distribution relative montrant où va chaque unité de revenu';

  @override
  String get reportSettings => 'Paramètres de rapports';

  @override
  String get reportPreferences => 'فترة افتراضية وتفضيلات';

  @override
  String get periodApplied =>
      'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة';

  @override
  String get currentPeriod => 'الفترة المختارة:';

  @override
  String get yesterday => 'Hier';

  @override
  String get thisWeek => 'Cette semaine';

  @override
  String get thisMonth => 'Ce mois-ci';

  @override
  String get thisYear => 'Cette année';

  @override
  String get lastQuarter => 'Trimestre dernier';

  @override
  String get dailyTrend => 'Tendance quotidienne';

  @override
  String get weekly => 'Hebdomadaire';

  @override
  String get monthly => 'Mensuel';

  @override
  String get quarterly => 'Trimestriel';

  @override
  String get yearly => 'Annuel';

  @override
  String get custom => 'Personnalisé';

  @override
  String get noData => 'Aucune donnée';

  @override
  String get noDataPeriod => 'Aucune donnée pour cette période';

  @override
  String get noDailyData => 'Aucune donnée quotidienne';

  @override
  String get noTrendData => 'Aucune donnée de tendance';

  @override
  String get noMetricsData => 'لا توجد بيانات لعرض المقاييس';

  @override
  String get tryDateRange =>
      'Essayez de modifier la plage de dates ou le filtre';

  @override
  String get filterNone => 'لا نتائج';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get searchDescriptionCategory => 'بحث (وصف أو فئة)';

  @override
  String get searchCustomerProductPlan =>
      'بحث: عميل، منتج، رقم خطة، رقم فاتورة...';

  @override
  String get salesInvoices => 'Ventes';

  @override
  String get salesOnly => 'Ventes (non retournées)';

  @override
  String get dailySales => 'Ventes quotidiennes';

  @override
  String get totalRevenue => 'Revenu total';

  @override
  String get totalSalesCount => 'عدد الفواتير';

  @override
  String get totalReturns => 'Retours totaux';

  @override
  String get totalExpenses => 'Dépenses totales';

  @override
  String get netSales => 'Ventes nettes';

  @override
  String get netAfterExpenses => 'Net après dépenses';

  @override
  String get netApprox => 'Net approximatif';

  @override
  String get netApproxDesc => 'صافي تقريبي (بيع − مرتجع)';

  @override
  String get netSalesPeriod => 'Ventes nettes de la période';

  @override
  String get salesVsExpenses => 'Ventes vs Dépenses — tendance quotidienne';

  @override
  String get paymentTypeTrend => 'اتجاه أنواع الدفع عبر الزمن';

  @override
  String get categoryStacked => 'اتجاه الفئات المكدّس عبر الزمن';

  @override
  String get employeeSalesTrend => 'اتجاه مبيعات الموظفين عبر الزمن';

  @override
  String get salesByPaymentType => 'توزيع المبيعات حسب نوع الدفع';

  @override
  String get salesByCategory => 'توزيع المبيعات حسب الفئة';

  @override
  String get salesByCustomer => 'توزيع المبيعات على العملاء';

  @override
  String get salesByEmployee => 'توزيع المبيعات على الموظفين';

  @override
  String get topProducts => 'Produits les plus vendus';

  @override
  String get topProductsByRevenue => 'أكثر الأصناف مبيعاً (حسب إيراد البنود)';

  @override
  String get topCustomers => 'Meilleurs clients';

  @override
  String get topCustomersByPurchase => 'أكثر العملاء شراءً (حسب اسم الفاتورة)';

  @override
  String get topEmployees => 'Meilleurs employés';

  @override
  String get topEmployeesBySales =>
      'ترتيب حسب إجمالي المبيعات المسجّلة على الفواتير';

  @override
  String get topCategories => 'أعلى الفئات إيراداً';

  @override
  String topCategory(Object name) {
    return 'أعلى فئة: $name';
  }

  @override
  String get moreItems => 'Autres';

  @override
  String get reportAccuracyNote => 'ملاحظات الدقّة';

  @override
  String get marginAccuracyDesc =>
      'نسبة تغطية التكلفة — كلما ارتفعت زادت الدقة';

  @override
  String get fixedCostRatio => 'نسبة السطور ذات التكلفة المثبّتة من الإجمالي';

  @override
  String costFixedAtSale(Object amount) {
    return 'مثبّتة وقت البيع: $amount';
  }

  @override
  String noCostZeros(Object count) {
    return 'بدون تكلفة (تُعامَل 0): $count';
  }

  @override
  String get expenseAnalysis => 'تحليلات';

  @override
  String get expenseBreakdown => 'تحليلات المصروفات ضمن الفترة';

  @override
  String get topExpenses => 'أدنى 10 منتجات ربحاً (مراجعة تسعير)';

  @override
  String get lowMarginProducts => 'منتجات هامشها منخفض أو سالب';

  @override
  String get lowMarginDesc =>
      'منتجات هامشها منخفض أو سالب — قد تحتاج مراجعة السعر أو التكلفة';

  @override
  String get customerBalances => 'أرصدة العملاء';

  @override
  String get customerBalancesDesc => 'أرصدة مسجّلة في سجل العملاء';

  @override
  String get installmentPlans => 'خطط التقسيط';

  @override
  String get installmentPlansDesc => 'خطط أقساط (فواتير ضمن الفترة)';

  @override
  String get activePlans => 'خطط نشطة';

  @override
  String get noInstallmentPlans => 'Aucun plan de versement';

  @override
  String get noInstallmentSearch => 'لا توجد خطط ضمن البحث أو التصفية الحالية';

  @override
  String get salesFlowItems => 'فواتير ومبيعات (قيود مرتبطة بفاتورة)';

  @override
  String get salesInvoicesReturns => 'فواتير / مرتجعات';

  @override
  String filteredPeriod(Object from, Object to) {
    return 'الفترة: $from → $to';
  }

  @override
  String filteredPlansCount(Object filtered, Object total) {
    return 'القائمة: $filtered من $total خطة';
  }

  @override
  String get employeePerformance =>
      'جدول — أداء التسجيل حسب اسم الموظف على الفاتورة';

  @override
  String get employeePerformanceDesc =>
      'فواتير مسجّلة باسم الموظف (حقل الفاتورة)';

  @override
  String get loyaltySummary => 'ملخص نقاط وخصومات الولاء';

  @override
  String get loyaltyGranted =>
      'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)';

  @override
  String get loyaltyRedeemed =>
      'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)';

  @override
  String get loyaltyDiscounts => 'خصومات ولاء على الفواتير';

  @override
  String get bestSales => 'تحليل وهامش';

  @override
  String get bestSalesDesc => 'تحليلات تفاصيل البضاعة والهامش والصافي';

  @override
  String get backToHome => 'Retour à l\'accueil';

  @override
  String get selectEmployee => 'اختر موظفاً';

  @override
  String get selectCustomer => 'اختر عميلاً مسجّلاً';

  @override
  String get selectCustomerFromList => 'اختيار عميل من القائمة';

  @override
  String get updateButton => 'تحديث';

  @override
  String get refreshButton => 'تحديث (F5)';

  @override
  String get refreshData => 'تحديث البيانات';

  @override
  String get noItemsRecorded => 'لا توجد أصناف مسجّلة في الفاتورة';

  @override
  String get salesOnlySection =>
      'هذا القسم يعرض المبيعات فقط: نقدي/دين/تقسيط/توصيل';

  @override
  String get thankYou => 'Merci d\'utiliser Maarey';

  @override
  String get cashTitle => 'Caisse';

  @override
  String get cashDrawer => 'الصندوق';

  @override
  String get openShift => 'Ouvrir le quart';

  @override
  String get closeShift => 'Fermer le quart';

  @override
  String get shiftDetails => 'Détails du quart';

  @override
  String get shiftIdentity => 'هوية الوردية والجلسة';

  @override
  String get openTime => 'Heure d\'ouverture';

  @override
  String get closeTime => 'Heure de fermeture';

  @override
  String get declaredOnOpen => 'النقد المُعلَن عند الفتح (الجرد)';

  @override
  String get declaredAfterWithdrawal => 'النقد المُعلَن في الصندوق بعد السحب';

  @override
  String get systemBalanceOpen => 'رصيد النظام عند فتح الوردية';

  @override
  String get systemBalanceClose => 'رصيد النظام عند الإغلاق';

  @override
  String get withdrawnOnClose => 'المسحوب عند الإغلاق';

  @override
  String get pendingDeclared => 'المُعلَن متبقيًّا في الصندوق';

  @override
  String get shiftMovements => 'الحركات';

  @override
  String totalMovements(Object count) {
    return 'إجمالي ما يظهر من حركات في الصندوق لهذه المجموعة: $count حركة';
  }

  @override
  String get inflow => 'Entrée';

  @override
  String get outflow => 'Sortie';

  @override
  String get inflowLabel => 'وارد (إدخال)';

  @override
  String get outflowLabel => 'صادر (إخراج)';

  @override
  String get inflowLineByLine => 'الوارد — سطر بسطر';

  @override
  String get outflowLineByLine => 'الصادر — سطر بسطر';

  @override
  String get manualEntry => 'قيد يدوي';

  @override
  String get manualDeposit => 'إيداع يدوي';

  @override
  String get manualWithdrawal => 'سحب يدوي';

  @override
  String get affectsCashbox => 'أثر على الصندوق';

  @override
  String get cashSales => 'بيع نقدي';

  @override
  String get creditSalesLabel => 'دين';

  @override
  String get noOutflowMovements => 'لا توجد حركات صادر في هذه المجموعة';

  @override
  String get noInflowMovements => 'لا توجد حركات وارد في هذه المجموعة';

  @override
  String get noLinkedMovements =>
      'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة';

  @override
  String get otherMovements => 'حركات أخرى';

  @override
  String get movement => 'حركة';

  @override
  String get printReceipt => 'طباعة إيصال';

  @override
  String get depositEntry => 'Dépôt';

  @override
  String get withdrawalEntry => 'Retrait';

  @override
  String get cashSummary => 'ملخص الصندوق';

  @override
  String get summaryInflowOutflow => 'ملخص الوارد والصادر (هذه القائمة)';

  @override
  String get loyaltyRange => 'ولاء (ضمن الفترة)';

  @override
  String noShift(Object count) {
    return 'بدون وردية · $count حركة';
  }

  @override
  String get invoiceAttached => 'فاتورة مرفقة';

  @override
  String get linkedInvoice => 'الفاتورة المرتبطة';

  @override
  String get expensesTitle => 'Dépenses';

  @override
  String get addExpense => 'Ajouter une dépense';

  @override
  String get editExpense => 'Modifier la dépense';

  @override
  String get deleteExpense => 'Supprimer cette dépense ?';

  @override
  String get confirmDeleteExpense => 'هل تريد حذف هذا المصروف؟ لا يمكن التراجع';

  @override
  String get expenseCategory => 'Catégorie *';

  @override
  String get expenseDescription => 'الوصف';

  @override
  String get expenseAmount => 'Montant';

  @override
  String get expenseDate => 'Date';

  @override
  String get expenseStatus => 'الحالة';

  @override
  String get expensePaid => 'Payé';

  @override
  String get expenseUnpaid => 'Impayé';

  @override
  String get expenseReceipt => 'Reçu de dépense';

  @override
  String get expenseReport => 'فاتورة تقرير المصروفات';

  @override
  String get printExpenseReport => 'Imprimer le rapport de dépenses';

  @override
  String get expensesWithinPeriod => 'المصروفات ضمن الفترة';

  @override
  String get allCategories => 'كل الفئات';

  @override
  String get selectCategory => 'اختر فئة المصروف';

  @override
  String get selectOtherCategory => 'اختيار فئة أخرى';

  @override
  String get categoryOptions => 'خيارات القسم';

  @override
  String get showCategoryDescription => 'عرض وصف القسم';

  @override
  String get copyCategoryName => 'نسخ اسم القسم';

  @override
  String categoryCopied(Object name) {
    return 'تم نسخ اسم القسم: $name';
  }

  @override
  String get todayExpense => 'مصروف اليوم';

  @override
  String get monthlyRecurring => 'مصروف شهري متكرر';

  @override
  String get recurringDay => 'تكرار شهري';

  @override
  String get selectMonthDay => 'عدد الأيام (1–365)';

  @override
  String get duplicateRecurring => 'تكرار شهري';

  @override
  String get expenseSaved => 'تم تسجيل المصروف بنجاح';

  @override
  String get expenseUpdated => 'تم تحديث المصروف بنجاح';

  @override
  String expenseSaveError(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get attachmentOptional => 'إرفاق صورة الفاتورة (اختياري)';

  @override
  String get imageAttached => 'تم إرفاق صورة الفاتورة';

  @override
  String get imageError => 'تعذر اختيار الصورة';

  @override
  String get noExpensesPeriod => 'لا توجد مصروفات ضمن هذه الفترة';

  @override
  String get noCategoryData => 'لا توجد بيانات.';

  @override
  String get selectCategoryAmount => 'يرجى اختيار فئة وإدخال مبلغ صحيح.';

  @override
  String get installmentsTitle => 'Versements';

  @override
  String get addInstallmentPlan => 'Ajouter un plan de versement';

  @override
  String get planDetails => 'Détails du plan';

  @override
  String get installmentSchedule => 'Échéancier';

  @override
  String get installmentSettings => 'Paramètres de versement';

  @override
  String get paymentSchedule => 'الجدولة وتواريخ الاستحقاق';

  @override
  String get dueDates => 'الاستحقاق';

  @override
  String get monthlyPaymentLabel => 'القسط الشهري المقترح';

  @override
  String get interestRateLabel => 'نسبة الفائدة';

  @override
  String get downPaymentLabel => 'المقدّم';

  @override
  String get downPaymentRequired => 'إلزام مقدّم دفع لفاتورة التقسيط';

  @override
  String get advanceAmountLabel => 'المبلغ المموّل';

  @override
  String get minAdvancePercentLabel => 'أقل نسبة مقدّم من إجمالي الفاتورة (%)';

  @override
  String get minAdvancePercentDesc =>
      'مثال: 10 تعني ألا يقل المقدّم عن 10٪ من الإجمالي';

  @override
  String get useCalendarMonthsLabel => 'استخدام أشهر تقويمية لتواريخ الاستحقاق';

  @override
  String get useCalendarMonthsDesc =>
      'مفعّل: إضافة شهر تقويمي من تاريخ المرجع. معطّل: تقريب 30 يوماً لكل فترة.';

  @override
  String get referenceDateLabel => 'مرجع الجدولة (بداية العدّ)';

  @override
  String get fromInvoiceDateLabel => 'من تاريخ الفاتورة';

  @override
  String get fromSessionOpenLabel => 'من فتح الجلسة في النظام';

  @override
  String get linkCustomerLabel => 'ربط العميل';

  @override
  String get selectRegisteredCustomer => 'اختر عميلاً مسجّلاً';

  @override
  String customerBalanceLabel(Object amount) {
    return 'رصيد العميل المسجّل: $amount';
  }

  @override
  String planCreatedAtLabel(Object date) {
    return 'تم الإنشاء: $date';
  }

  @override
  String get totalInstallmentsLabel => 'عدد الأقساط';

  @override
  String get remainingInstallmentsLabel => 'عدد أقساط المتبقي';

  @override
  String get paidAmountLabel => 'Montant payé';

  @override
  String get remainingAmountLabel => 'المتبقي';

  @override
  String get nextInstallmentLabel => 'القسط التالي';

  @override
  String nextDueLabel(Object amount, Object date) {
    return 'القسط التالي: $amount — $date';
  }

  @override
  String firstDueLabel(Object date) {
    return 'أول استحقاق: $date';
  }

  @override
  String installmentPaidLabel(Object date) {
    return 'سُدد: $date';
  }

  @override
  String get installmentPendingLabel => 'المعلق';

  @override
  String get installmentOverdueLabel => 'متأخرة';

  @override
  String get installmentCompletedLabel => 'مكتملة';

  @override
  String get settleInstallmentLabel => 'تسديد قسط';

  @override
  String settleInstallmentDesc(Object amount) {
    return 'يجب تسديد قيمة القسط كاملة ($amount)';
  }

  @override
  String get cantRescheduleLabel =>
      'لا يمكن إعادة جدولة الأقساط بعد تسديد قسط من هذه الخطة';

  @override
  String get planAlreadyExistsLabel =>
      'الخطة مسجّلة بالفعل وتظهر تحت «خطط التقسيط»';

  @override
  String get planCreatedLabel => 'تم حفظ الجدول وربط العميل';

  @override
  String get scheduleSavedLabel => 'تم حفظ جدول الأقساط';

  @override
  String get planLoadErrorLabel => 'تعذر تحميل خطة التقسيط';

  @override
  String get paymentRecordErrorLabel => 'تعذر التسجيل (قد يكون القسط مدفوعاً)';

  @override
  String planIdLabel(Object id) {
    return 'خطة #$id';
  }

  @override
  String installmentNumberLabel(Object index) {
    return 'القسط #$index';
  }

  @override
  String planMonthsLabel(Object count) {
    return 'عدد الأشهر: $count';
  }

  @override
  String planSuggestedMonthlyLabel(Object amount) {
    return 'القسط الشهري المقترح: $amount';
  }

  @override
  String planFinancedAtSaleLabel(Object amount) {
    return 'المبلغ المموّل: $amount';
  }

  @override
  String planInterestAmountLabel(Object amount) {
    return 'قيمة الفائدة: $amount';
  }

  @override
  String planProgressLabel(Object paid, Object total) {
    return 'تقدّم السداد: $paid / $total';
  }

  @override
  String get noRemainingAfterAdvanceLabel =>
      'لا يوجد مبلغ متبقٍ للتقسيط بعد المقدم';

  @override
  String calendarScheduleLabel(Object step) {
    return 'جدولة: شهر تقويمي × $step لكل قسط من المرجع';
  }

  @override
  String roundScheduleLabel(Object step) {
    return 'جدولة: تقريب 30 يوماً × $step لكل قسط من المرجع';
  }

  @override
  String get dueDayLabel => 'يُستحق يوم';

  @override
  String get dueDayDesc => 'يحدده البائع من التقويم (اتفاق)';

  @override
  String get installmentSettingsSavedLabel => 'تم حفظ إعدادات التقسيط';

  @override
  String get requiredInstallmentsLabel => 'عدد الأقساط يجب أن يكون 1 على الأقل';

  @override
  String get validAmountLabel => 'قيمة غير صالحة';

  @override
  String get debtCollectionLabel => 'Recouvrement';

  @override
  String get supplierPaymentLabel => 'Paiement fournisseur';

  @override
  String get salaryLabel => 'رواتب';

  @override
  String get rentLabel => 'إيجار';

  @override
  String get waterLabel => 'ماء';

  @override
  String get electricityLabel => 'كهرباء';

  @override
  String get otherLabel => 'آخرون';

  @override
  String get updateAction => 'Mettre à jour';

  @override
  String get saveAction => 'Enregistrer';

  @override
  String get printAction => 'Imprimer';

  @override
  String get retryAction => 'Réessayer';

  @override
  String get reloadFromDb => 'Recharger depuis la base';

  @override
  String get amountLabel => 'Montant';

  @override
  String get employeeLabel => 'Employé';

  @override
  String get paidLabel => 'Payé';

  @override
  String get remainingLabel => 'Restant';

  @override
  String get salesTitle => 'Ventes';

  @override
  String get installmentSettingsTitle => 'Paramètres de versement';

  @override
  String get createPlan => 'Créer le plan';

  @override
  String get accuracyNotes => 'Notes de précision';

  @override
  String get addEntry => 'Ajouter une entrée';

  @override
  String get advanceAndTerms => 'Avance et conditions';

  @override
  String get advanceFirstPayment => 'Avance / Premier paiement';

  @override
  String get advancePayment => 'Avance';

  @override
  String get advancePercentExample =>
      'Exemple : 10 signifie que l\'avance doit être d\'au moins 10% du total.';

  @override
  String get advancePercentRange =>
      'Le pourcentage d\'avance doit être entre 0 et 100';

  @override
  String get affectedCashBox => 'Affecté à la caisse';

  @override
  String get amountAddedAtOpen => 'Montant ajouté à l\'ouverture';

  @override
  String get amountIQD => 'Montant (FDJ)';

  @override
  String get analysisAndMargin => 'Analyse et marge';

  @override
  String get analytics => 'Analyses';

  @override
  String get apply => 'Appliquer';

  @override
  String get approxNet => 'Net approx. (Vente − Retour)';

  @override
  String get attachInvoiceImageOptional =>
      'Joindre l\'image de la facture (optionnel)';

  @override
  String get balance => 'Solde';

  @override
  String get beneficiary => 'Bénéficiaire';

  @override
  String get bottom10ProfitProducts =>
      '10 derniers produits par profit (Révision des prix)';

  @override
  String get calendarMonthsExplanation =>
      'ACTIVÉ : ajoute un mois calendrier. DÉSACTIVÉ : arrondit à 30 jours.';

  @override
  String get cannotRescheduleAfterPayment =>
      'Impossible de reprogrammer après un paiement sur ce plan.';

  @override
  String get cashBox => 'Caisse';

  @override
  String get cashSale => 'Vente';

  @override
  String get category => 'Catégorie';

  @override
  String get categoryRequired => 'Catégorie *';

  @override
  String get change => 'Changer';

  @override
  String get changeOrRemoveAnytime =>
      'Vous pouvez la changer ou la supprimer à tout moment.';

  @override
  String get choose => 'Choisir';

  @override
  String get chooseOtherCategory => 'Choisir une autre catégorie';

  @override
  String get clearSearchOrChangeTab =>
      'Effacer la recherche (×) ou passer à l\'onglet Tous.';

  @override
  String get closeForm => 'Fermer le formulaire ?';

  @override
  String get closeFormConfirm =>
      'Fermer le formulaire ? Les données ne seront pas sauvegardées.';

  @override
  String get cogs => 'Coût des marchandises vendues (CMV)';

  @override
  String get controlAdvanceRequirements =>
      'Contrôler l\'avance obligatoire et le pourcentage minimum.';

  @override
  String get copySectionName => 'Copier le nom de la section';

  @override
  String get cost => 'Coût';

  @override
  String get countByEntryType => 'Décompte par type d\'entrée';

  @override
  String get customer => 'Client';

  @override
  String get customerBalanceList => 'Liste des clients (Solde dû au magasin)';

  @override
  String get daily => 'Journalier';

  @override
  String get dailySalesInRange => 'Ventes journalières dans la période';

  @override
  String get dashboardTitle => 'Tableau de bord';

  @override
  String get dateRange => 'Plage de dates';

  @override
  String get dayCount => 'Nombre de jours (1–365)';

  @override
  String get debtorCustomerCount => 'Nombre de clients débiteurs';

  @override
  String get debts => 'Dettes';

  @override
  String get declaredCashAfterWithdrawal =>
      'Espèces déclarées dans la caisse après retrait';

  @override
  String get declaredCashAtOpen =>
      'Espèces déclarées à l\'ouverture (Inventaire)';

  @override
  String get defaultInstallmentCountRange =>
      'Nombre d\'acomptes par défaut entre 1 et 120';

  @override
  String get defaultInstallmentInterestRate =>
      'Taux d\'intérêt par défaut pour les ventes à tempérament (%)';

  @override
  String get defaultInterestRange =>
      'Taux d\'intérêt par défaut entre 0 et 100';

  @override
  String get defaultPeriodAndPreferences => 'Période par défaut et préférences';

  @override
  String get defaultRemainingInstallments =>
      'Acomptes restants par défaut (lors de la création d\'un plan)';

  @override
  String get defaultReportPeriod =>
      'Période par défaut lors de l\'ouverture des rapports';

  @override
  String get deleteExpenseConfirm =>
      'Supprimer cette dépense ? Cette action est irréversible.';

  @override
  String get descriptionOptional => 'Description (Optionnel)';

  @override
  String get dueDay => 'Jour d\'échéance';

  @override
  String get employeeBeneficiary => 'Employé (Bénéficiaire)';

  @override
  String get employeeRecorder => 'Employé / Enregistreur';

  @override
  String get employees => 'Employés';

  @override
  String get enterAmountGreaterThanZero => 'Entrez un montant supérieur à zéro';

  @override
  String get enterInstallmentCount => 'Entrez le nombre d\'acomptes';

  @override
  String get enterMovementDescription =>
      'Entrez une description pour le mouvement';

  @override
  String get entry => 'Entrée';

  @override
  String get everyMonth => 'Chaque mois';

  @override
  String get exit => 'Sortie';

  @override
  String get expenseCount => 'Nombre de dépenses';

  @override
  String get expenseReason => 'Motif de la dépense (imprimé sur le reçu)';

  @override
  String get expenseReportInvoice => 'Facture du rapport de dépenses';

  @override
  String get expenses => 'Dépenses';

  @override
  String get exportExcel => 'Exporter (Copier Excel)';

  @override
  String get failedToLoadInstallmentPlan =>
      'Échec du chargement du plan de paiement.';

  @override
  String get firstDueReferenceDate => 'Date de référence de première échéance';

  @override
  String get fullTransparency =>
      'Transparence totale — voici les règles adoptées';

  @override
  String get futureFeatures =>
      'Bientôt : export PDF/Excel, planification des rapports et accès par rôle.';

  @override
  String get grossMargin => 'Marge brute';

  @override
  String get history => 'Historique';

  @override
  String get howMarginCalculated => 'Comment la marge est-elle calculée ?';

  @override
  String get imageSelectionFailed => 'Échec de la sélection de l\'image.';

  @override
  String get inbound => 'Entrant';

  @override
  String get inboundEntry => 'Entrant (Saisie)';

  @override
  String get inboundLineByLine => 'Entrant — Ligne par ligne';

  @override
  String get inboundOutboundSummary =>
      'Résumé entrées et sorties (Cette liste)';

  @override
  String get inboundTotal => 'Entrant';

  @override
  String get indicatorsAndPeriod => 'Indicateurs et période';

  @override
  String get installmentPeriodMethod =>
      'Période des acomptes, méthode de calcul du mois et date de référence.';

  @override
  String get installmentPeriodRange =>
      'Période entre les acomptes : 1 à 24 mois';

  @override
  String get installmentPlanDetails => 'Détails du plan de paiement';

  @override
  String get installmentPlansInPeriod =>
      'Plans de paiement (Factures dans la période)';

  @override
  String get installmentScheduleSaved => 'Planning des acomptes sauvegardé';

  @override
  String get interestInfoAtSale => 'Info d\'intérêt (À la vente)';

  @override
  String get invalidValue => 'Valeur invalide';

  @override
  String get inventoryAndCashbox => 'Inventaire et Caisse (Registre système)';

  @override
  String get inventoryWithdrawn => 'Marchandises retirées de l\'inventaire';

  @override
  String get invoiceCount => 'Nombre de factures';

  @override
  String get invoiceImageAttached => 'Image de facture jointe';

  @override
  String get invoiceSummary => 'Résumé de la facture';

  @override
  String get invoicesAndSales => 'Factures et ventes (Écritures liées)';

  @override
  String get invoicesInMovements => 'Factures dans ces mouvements';

  @override
  String get invoicesReturns => 'Factures / Retours';

  @override
  String get isExpensePrepaid => 'La dépense est-elle prépayée ?';

  @override
  String get item => 'Article';

  @override
  String get itemLabel => 'Article';

  @override
  String get itemsSoldWithStock =>
      'Articles vendus avec le solde de stock actuel.';

  @override
  String get kpiPieDescription =>
      'Graphique unifié pour les indicateurs financiers — ventes/retours/net';

  @override
  String get loadingInvoiceItems => 'Chargement des articles…';

  @override
  String get loyaltyInRange => 'Fidélité (Dans la période)';

  @override
  String get mainPerformanceIndicators =>
      'Indicateurs de performance principaux';

  @override
  String get manualDepositReceipt =>
      'Reçu de dépôt manuel (Total des entrées de dépôt)';

  @override
  String get manualDepositWithdrawalGroup =>
      'Dépôt et retrait manuels (Ce groupe)';

  @override
  String get manualDepositWithdrawalInShift =>
      'Dépôt et retrait manuels dans le quart de travail';

  @override
  String get manualWithdrawalReceipt =>
      'Reçu de retrait manuel (Total des entrées de retrait)';

  @override
  String get margin => 'Marge';

  @override
  String get marginDataQuality => 'Qualité des données de marge (Couverture)';

  @override
  String get marginPercent => 'Marge %';

  @override
  String get minOneInstallment =>
      'Le nombre d\'acomptes doit être d\'au moins 1';

  @override
  String get minimumAdvancePercent =>
      'Pourcentage minimum d\'avance du total de la facture';

  @override
  String get miscExpenses => 'Dépenses diverses';

  @override
  String get monthlyRecurringExpense => 'Dépense mensuelle récurrente';

  @override
  String get monthlyRepeat => 'Répétition mensuelle';

  @override
  String get more => 'Plus';

  @override
  String get movementsWithoutShift =>
      'Détails des mouvements (Sans quart de travail)';

  @override
  String get netProfit => 'Bénéfice net (Marge − Dépenses)';

  @override
  String get noComment =>
      'Pas de commentaire — recommander d\'ajouter un motif.';

  @override
  String get noDailyDataInPeriod =>
      'Pas de données journalières pour cette période';

  @override
  String get noDataAvailable => 'Aucune donnée disponible';

  @override
  String get noExpensesInPeriod => 'Aucune dépense dans cette période';

  @override
  String get noInboundMovements => 'Aucun mouvement entrant dans ce groupe.';

  @override
  String get noInvoiceLinkedMovements =>
      'Aucun mouvement lié à une facture dans ce groupe.';

  @override
  String get noItemsInPeriod => 'Aucun article dans cette période.';

  @override
  String get noLinkUseInvoiceName =>
      'Sans lien — utiliser le nom de la facture';

  @override
  String get noMovementsInGroup => 'Aucun mouvement dans ce groupe.';

  @override
  String get noOutboundMovements => 'Aucun mouvement sortant dans ce groupe.';

  @override
  String get noPlansInCurrentFilter =>
      'Aucun plan ne correspond à la recherche ou au filtre actuel';

  @override
  String get noSalesInPeriod => 'Aucune vente dans cette période';

  @override
  String get okay => 'OK';

  @override
  String get open => 'Ouverte';

  @override
  String get openSection => 'Ouvrir la section';

  @override
  String get option => 'Option';

  @override
  String get optional => '(Optionnel)';

  @override
  String get others => 'Autres';

  @override
  String get outbound => 'Sortant';

  @override
  String get outboundExit => 'Sortant (Sortie)';

  @override
  String get outboundLineByLine => 'Sortant — Ligne par ligne';

  @override
  String get outboundTotal => 'Sortant';

  @override
  String get overdueInstallmentWarning => 'Attention : Acompte en retard';

  @override
  String get ownerOrProperty => 'Propriétaire ou Bien';

  @override
  String get paidCappedAtTotal =>
      '\'Payé\' est plafonné au total du plan en cas de conflit.';

  @override
  String get paidRemaining => 'Payé / Restant';

  @override
  String get payInstallment => 'Payer l\'acompte';

  @override
  String get paymentProgress => 'Progression des paiements';

  @override
  String get paymentType => 'Type de paiement';

  @override
  String get paymentTypeRatio =>
      'Ratio de chaque type de paiement par rapport aux ventes';

  @override
  String get paymentTypesAndReturns => 'Types de paiement et retours';

  @override
  String get paymentTypesTrendOverTime =>
      'Évolution des types de paiement dans le temps';

  @override
  String get pendingLabel => 'En attente';

  @override
  String get percentage => 'Pourcentage';

  @override
  String get periodBetweenDueDates => 'Période entre les échéances (en mois)';

  @override
  String get periodExplanation => '1 = mensuel, 2 = tous les 2 mois, etc.';

  @override
  String get periodNetSales => 'Ventes nettes de la période';

  @override
  String get periodPlans => 'Plans de la période';

  @override
  String get periodRevenue => 'Revenu de la période';

  @override
  String get plan => 'Plan';

  @override
  String get planAutoCreatedAfterSave =>
      'Après la sauvegarde d\'une facture à tempérament, le plan est créé automatiquement.';

  @override
  String get preferRegisteredCustomer =>
      'Préférez sélectionner un client enregistré pour un suivi plus facile.';

  @override
  String get printPeriodReport => 'Imprimer le rapport de période';

  @override
  String get productsAndEstimatedMargin => 'Produits et marge estimée';

  @override
  String get propertyOrEntity => 'Nom du bien / Entité';

  @override
  String get recordingPerformance => 'Performance d\'enregistrement';

  @override
  String get recurring => 'Récurrent';

  @override
  String get registeredCustomer => 'Client enregistré';

  @override
  String get remainingInstallmentsCount => 'Nombre d\'acomptes restants';

  @override
  String get reportSections => 'Sections des rapports';

  @override
  String get requireAdvanceForInstallment =>
      'Exiger une avance pour les factures à tempérament';

  @override
  String get returnCount => 'Nombre de retours';

  @override
  String get returnItem => 'Retour';

  @override
  String get returns => 'Retours';

  @override
  String get revenueComposition => 'Composition du revenu : Coût + Marge';

  @override
  String get revenueTrend =>
      'Tendance du revenu : Coût + Marge + Dépenses journalières';

  @override
  String get salaries => 'Salaires';

  @override
  String get sale => 'Vente';

  @override
  String get saleScreenInstallmentCard => 'Écran de vente et carte d\'acompte';

  @override
  String get sales => 'Ventes';

  @override
  String get salesNotMixedWithReceipts =>
      'Pour que les ventes ne soient pas mêlées aux reçus';

  @override
  String get salesVsExpensesDailyTrend =>
      'Ventes vs Dépenses — Tendance journalière';

  @override
  String get saveAndApply => 'Enregistrer et appliquer';

  @override
  String get saveScheduleChanges => 'Enregistrer les modifications du planning';

  @override
  String get saving => 'Enregistrement...';

  @override
  String get scheduleReference => 'Référence du planning (Début du comptage)';

  @override
  String get schedulingAndDueDates => 'Planification et dates d\'échéance';

  @override
  String get searchByNameOrPhone =>
      'Rechercher par nom, identifiant ou téléphone';

  @override
  String get searchByNameOrPhoneOrNumber =>
      'Rechercher par nom, téléphone ou numéro…';

  @override
  String get searchDescriptionOrCategory =>
      'Recherche (description ou catégorie)';

  @override
  String get searchPlaceholder =>
      'Recherche : client, produit, numéro de plan, facture…';

  @override
  String get sectionOptions => 'Options de la section';

  @override
  String get selectCategoryAndAmount =>
      'Veuillez sélectionner une catégorie et entrer un montant valide.';

  @override
  String get selectEmployeeTitle => 'Sélectionner un employé';

  @override
  String get selectExpenseCategory => 'Choisir la catégorie de dépense';

  @override
  String get selectPeriodForReport =>
      'Sélectionnez la période pour le rapport :';

  @override
  String get selectedPeriod => 'Période sélectionnée :';

  @override
  String get sellerChosenFromCalendar =>
      'Choisi par le vendeur du calendrier (accord)';

  @override
  String get serviceInvoiceNumber => 'Numéro de facture de service';

  @override
  String get sessionOpenedBy => 'Session ouverte par';

  @override
  String get setupInstallmentSchedule => 'Configurer le planning des acomptes';

  @override
  String get showCalculatorCard =>
      'Afficher la carte calculatrice et les valeurs par défaut.';

  @override
  String get showInstallmentCardInSale =>
      'Afficher la carte « Plan d\'acomptes » dans l\'écran de vente';

  @override
  String get stay => 'Rester';

  @override
  String get systemBalanceAtClose => 'Solde système à la fermeture';

  @override
  String get systemBalanceAtOpen => 'Solde système à l\'ouverture';

  @override
  String get tableCopiedToClipboard =>
      'Tableau copié dans le presse-papiers (collez dans Excel).';

  @override
  String get tapForFullDetails => 'Appuyez pour les détails complets';

  @override
  String get taxType => 'Type de taxe';

  @override
  String get taxTypeExample => 'ex. Impôt sur le revenu, TVA';

  @override
  String get taxes => 'Taxes';

  @override
  String get thankYouForUsing => 'Merci d\'utiliser Maarey';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get todayExpenses => 'Dépenses du jour';

  @override
  String get top10ProfitProducts => 'Top 10 des produits par profit';

  @override
  String get topBuyers => 'Meilleurs acheteurs';

  @override
  String get topCustomersBySpending => 'Meilleurs clients par dépenses';

  @override
  String get topItemsByRevenue => 'Meilleurs articles par revenu';

  @override
  String get totalExpensesInPeriod => 'Total des dépenses dans la période';

  @override
  String get totalPlanValue => 'Valeur totale des plans';

  @override
  String get totalRecordedDebts => 'Total des dettes enregistrées';

  @override
  String get transactionCount => 'Nombre de transactions';

  @override
  String get tryChangingDateRange =>
      'Essayez de changer la plage de dates ou le filtre';

  @override
  String get unlinked => 'Non lié';

  @override
  String get usefulForUtilityBills =>
      'Utile pour les factures d\'eau/électricité/taxes.';

  @override
  String get viewSectionDescription => 'Voir la description de la section';

  @override
  String get warning => 'Attention';

  @override
  String get withdrawnAtClose => 'Retiré à la fermeture';

  @override
  String get withoutName => 'Sans nom';

  @override
  String get yesDeduction => 'Oui (Déduction)';

  @override
  String get deleteExpenseLabel => 'Supprimer la dépense ?';

  @override
  String get planNotFound => 'Plan introuvable';

  @override
  String get weekLabel => 'Cette semaine';

  @override
  String get monthLabel => 'Ce mois-ci';

  @override
  String get yearLabel => 'Cette année';

  @override
  String get allCategoriesLabel => 'Toutes les catégories';

  @override
  String get noSearchResults => 'Aucun résultat de recherche.';

  @override
  String get clearSearchLabel => 'Effacer la recherche';

  @override
  String get selectInvoiceCategory => 'Choisir la catégorie de dépense';

  @override
  String get cashBoxLabel => 'Caisse';

  @override
  String get manualEntryLabel => 'Écriture manuelle';

  @override
  String get depositLabel => 'Dépôt';

  @override
  String get withdrawalLabel => 'Retrait';

  @override
  String get currentBalanceLabel => 'Solde actuel';

  @override
  String get unpaidLabel => 'Impayé';

  @override
  String get recurringLabel => 'Récurrent';

  @override
  String get installmentPaymentLabel => 'Paiement d\'acompte';

  @override
  String get customerLabel2 => 'Client';

  @override
  String get percentageLabel => 'Pourcentage';

  @override
  String get revenueLabel => 'Revenu';

  @override
  String get salesLabel => 'Ventes';

  @override
  String get othersLabel => 'Autres';

  @override
  String get withoutNameLabel => 'Sans nom';

  @override
  String get paidLabel2 => 'Payé';

  @override
  String get pendingLabel2 => 'En attente';

  @override
  String get openLabel => 'Ouverte';

  @override
  String get costLabel => 'Coût';

  @override
  String get marginLabel => 'Marge';

  @override
  String get itemLabel2 => 'Article';

  @override
  String get productLabel => 'Produit';

  @override
  String get planLabel => 'Plan';

  @override
  String get returnCountLabel => 'Nombre de retours';

  @override
  String get optionLabel => 'Option';

  @override
  String get inboundLabel => 'Entrant';

  @override
  String get outboundLabel => 'Sortant';

  @override
  String get cashboxLabel => 'Caisse';

  @override
  String get dailyLabel => 'Journalier';

  @override
  String get weeklyLabel => 'Hebdomadaire';

  @override
  String get monthlyLabel => 'Mensuel';

  @override
  String get yearlyLabel => 'Annuel';

  @override
  String get customLabel => 'Personnalisé';

  @override
  String get pageLabel => 'Page';

  @override
  String get createdLabel => 'Créé :';

  @override
  String get totalAmountLabel => 'Total';

  @override
  String get overdueLabel => 'En retard';

  @override
  String get invoiceLabel => 'Facture';

  @override
  String get scheduleLabel => 'Planning';

  @override
  String get cancelLabel2 => 'Annuler';

  @override
  String get confirmLabel => 'Confirmer';

  @override
  String get addLabel => 'Ajouter';

  @override
  String get editLabel => 'Modifier';

  @override
  String get deleteLabel => 'Supprimer';

  @override
  String get filterLabel => 'Filtrer';

  @override
  String get exportLabel => 'Exporter';

  @override
  String get printLabel => 'Imprimer';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get okLabel => 'OK';

  @override
  String get backLabel => 'Retour';

  @override
  String get nextLabel => 'Suivant';

  @override
  String get doneLabel => 'Terminé';

  @override
  String get closeLabel => 'Fermer';

  @override
  String get openLabel2 => 'Ouvrir';

  @override
  String get loadingLabel => 'Chargement...';

  @override
  String get errorLabel => 'Erreur';

  @override
  String get warningLabel => 'Avertissement';

  @override
  String get successLabel => 'Succès';

  @override
  String get infoLabel => 'Info';

  @override
  String whFailedToLoad(Object error) {
    return 'Échec du chargement des entrepôts : $error';
  }

  @override
  String get whEditsSavedSuccess => 'Modifications enregistrées avec succès';

  @override
  String get whCreatedSuccess => 'Entrepôt créé avec succès';

  @override
  String whCodeLabel(Object code) {
    return 'Code : $code';
  }

  @override
  String get whDeleteTitle => 'Supprimer l\'entrepôt';

  @override
  String whDeleteConfirm(Object name) {
    return 'Êtes-vous sûr de vouloir supprimer l\'entrepôt «$name» ?';
  }

  @override
  String get whDeleteAction => 'Supprimer';

  @override
  String whDeleteFailed(Object error) {
    return 'Échec de la suppression de l\'entrepôt (peut être lié à des mouvements) : $error';
  }

  @override
  String get whDeactivateTitle => 'Désactiver l\'entrepôt';

  @override
  String get whDeactivateContent =>
      'Cet entrepôt ne sera pas utilisé dans les opérations de vente et d\'achat jusqu\'à sa réactivation.';

  @override
  String get whActivate => 'Activer';

  @override
  String get whDeactivateAction => 'Désactiver';

  @override
  String whStatusUpdateFailed(Object error) {
    return 'Échec de la mise à jour du statut : $error';
  }

  @override
  String get whScreenTitle => 'Entrepôts';

  @override
  String get whNewWarehouse => 'Nouvel entrepôt';

  @override
  String get whTotalValue => 'Valeur totale';

  @override
  String get whTotalItems => 'Total des articles';

  @override
  String get whSearchHint => 'Rechercher par nom ou code...';

  @override
  String get whClearSearch => 'Effacer';

  @override
  String get whNoWarehousesYet => 'Aucun entrepôt pour le moment';

  @override
  String get whCreateFirst => 'Créer le premier entrepôt';

  @override
  String get whDefaultChip => 'Par défaut';

  @override
  String get whActiveChip => 'Actif';

  @override
  String get whInactiveChip => 'Inactif';

  @override
  String get whItemsCount => 'Nombre d\'articles';

  @override
  String get whEditAction => 'Modifier';

  @override
  String get whViewStock => 'Voir le stock';

  @override
  String get whNameDuplicateError => 'Un entrepôt avec ce nom existe déjà';

  @override
  String get whCodeDuplicateError => 'Code déjà utilisé';

  @override
  String get whSetDefaultTitle => 'Définir par défaut';

  @override
  String get whSetDefaultContent =>
      'La valeur par défaut sera retirée de l\'entrepôt actuel et cet entrepôt sera défini par défaut.';

  @override
  String get whConfirmAction => 'Confirmer';

  @override
  String get whCloseFormTitle => 'Fermer le formulaire';

  @override
  String get whCloseFormContent =>
      'Voulez-vous fermer le formulaire ? Les données ne seront pas enregistrées.';

  @override
  String get whCloseAction => 'Fermer';

  @override
  String get whSelectBranchError => 'Sélectionnez une succursale';

  @override
  String get whAutoDefaultFirst =>
      'Défini automatiquement par défaut car c\'est le premier entrepôt';

  @override
  String whSaveFailed(Object error) {
    return 'Échec de l\'enregistrement de l\'entrepôt : $error';
  }

  @override
  String get whRequiredField => 'Obligatoire';

  @override
  String get whScanWarehouseCode => 'Scanner le code entrepôt';

  @override
  String get whEditWarehouse => 'Modifier l\'entrepôt';

  @override
  String get whWarehouseNameLabel => 'Nom de l\'entrepôt';

  @override
  String get whWarehouseNameHint =>
      'ex. : Entrepôt principal, Entrepôt succursale nord';

  @override
  String get whWarehouseCodeLabel => 'Code entrepôt';

  @override
  String get whWarehouseCodeHint => 'ex. : WH-001';

  @override
  String get whLocationLabel => 'Emplacement';

  @override
  String get whLocationHint => 'Adresse ou description de l\'emplacement';

  @override
  String get whBranchLabel => 'Succursale';

  @override
  String get whActiveWarehouse => 'Entrepôt actif';

  @override
  String get whInactiveWarning =>
      'L\'entrepôt désactivé n\'apparaîtra pas dans les opérations de vente et d\'achat';

  @override
  String get whSaving => 'Enregistrement...';

  @override
  String get whCreating => 'Création...';

  @override
  String get whSaveEdits => 'Enregistrer les modifications';

  @override
  String get whCreateWarehouse => 'Créer l\'entrepôt';

  @override
  String get whChooseBranch => 'Choisir la succursale';

  @override
  String get whBranchSearchHint =>
      'Rechercher par nom ou code de succursale...';

  @override
  String whStockTitle(Object name) {
    return 'Stock : $name';
  }

  @override
  String get whNoStockInWarehouse => 'Aucune quantité dans cet entrepôt';

  @override
  String get whStockOut => 'Rupture';

  @override
  String get whStockLow => 'Bas';

  @override
  String get whStockInStock => 'En stock';

  @override
  String get ipAllCategories => 'Toutes les catégories';

  @override
  String get ipAllBrands => 'Toutes les marques';

  @override
  String get ipAllStatus => 'Tout';

  @override
  String get ipProductManagement => 'Gestion des produits';

  @override
  String get ipSettingsTooltip => 'Paramètres';

  @override
  String get ipMoreTooltip => 'Plus';

  @override
  String get ipPrintBarcodes => 'Imprimer les étiquettes de codes-barres';

  @override
  String get ipProductSavedSnackbar =>
      'Produit enregistré et liste mise à jour';

  @override
  String get ipNewProductBtn => 'Nouveau produit';

  @override
  String get ipStatusActive => 'Actif';

  @override
  String get ipStatusLowStock => 'Stock bas';

  @override
  String get ipStatusOutOfStock => 'Rupture de stock';

  @override
  String get ipStatusInactive => 'Inactif';

  @override
  String get ipSearchAndMatch => 'Recherche et correspondance';

  @override
  String get ipCategoryFilter => 'Catégorie';

  @override
  String get ipBrandFilter => 'Marque';

  @override
  String get ipAdvancedSearch => 'Recherche avancée';

  @override
  String ipClearFilterCount(Object count) {
    return 'Effacer le filtre ($count)';
  }

  @override
  String get ipClearFilter => 'Effacer le filtre';

  @override
  String get ipSearchAction => 'Rechercher';

  @override
  String get ipKeywordSearch => 'Recherche par mot-clé';

  @override
  String get ipKeywordHint => 'Entrez le nom, le code ou le code-barres';

  @override
  String get ipBarcodeFilter => 'Code-barres';

  @override
  String get ipScanOrType => 'Scanner ou taper';

  @override
  String get ipProductCode => 'Code produit';

  @override
  String get ipSalePriceRange => 'Fourchette de prix de vente (FDJ)';

  @override
  String get ipPriceTo => 'À';

  @override
  String get ipPriceFrom => 'De';

  @override
  String get ipStatusFilter => 'Statut';

  @override
  String get ipResultsName => 'Nom';

  @override
  String get ipResultsPrice => 'Prix';

  @override
  String get ipResultsQty => 'Quantité';

  @override
  String get ipResultsAddedDate => 'Date d\'ajout';

  @override
  String get ipSortLabel => 'Tri';

  @override
  String get ipSortAsc => 'Croissant';

  @override
  String get ipSortDesc => 'Décroissant';

  @override
  String get ipNoProductsYet => 'Aucun produit pour le moment';

  @override
  String get ipNoProductsMatch =>
      'Aucun produit ne correspond à votre recherche';

  @override
  String get ipAddFirstHint =>
      'Commencez par ajouter votre premier article à l\'inventaire.';

  @override
  String get ipTryChangeSearch =>
      'Essayez de modifier vos termes de recherche ou d\'effacer le filtre.';

  @override
  String get ipAddFirstBtn => '+ Ajouter le premier produit';

  @override
  String get ipUnpinFromHome => 'Désépingler de l\'accueil';

  @override
  String get ipPinToHome => 'Épingler à l\'accueil';

  @override
  String get ipPrintBarcode => 'Imprimer le code-barres';

  @override
  String get ipDeactivate => 'Désactiver';

  @override
  String get ipActivate => 'Activer';

  @override
  String get ipDeleteProduct => 'Supprimer';

  @override
  String get ipNotTracked => 'Non suivi';

  @override
  String get ipDeleteProductTitle => 'Supprimer le produit';

  @override
  String get ipDeleteProductContent =>
      'Le produit sera masqué des listes (suppression logique) sans affecter les factures liées.';

  @override
  String get ipProductType => 'Produit';

  @override
  String get ipTechnicalService => 'Service technique';

  @override
  String ipAvailableQty(Object qty) {
    return 'Quantité disponible : $qty';
  }

  @override
  String get ipOutOfStock => 'Épuisé';

  @override
  String get ipProductOptions => 'Options du produit';

  @override
  String ipShowingResults(Object extra, Object matched, Object shown) {
    return 'Affichage de $shown sur $matched produits$extra';
  }

  @override
  String ipExtraCatalogInfo(Object total) {
    return ' · Total actif : $total';
  }

  @override
  String get addProductTitle => 'Ajouter un nouveau produit';

  @override
  String get apUnsavedChanges => 'Modifications non enregistrées';

  @override
  String get apUnsavedConfirm =>
      'Vous n\'avez pas enregistré le produit. Voulez-vous enregistrer avant de partir ?';

  @override
  String get apLeaveWithoutSaving => 'Quitter sans enregistrer';

  @override
  String get apSaveProduct => 'Enregistrer le produit';

  @override
  String get apColorSizeTitle => 'Couleurs et tailles';

  @override
  String get apDone => 'Terminé';

  @override
  String get apLoadFormFailed =>
      'Échec du chargement des données du formulaire produit';

  @override
  String apLoadFormFailedDetail(Object error) {
    return 'Impossible de charger les données du formulaire. Le champ fonctionnera en mode manuel.\\n$error';
  }

  @override
  String apImagePickFailed(Object error) {
    return 'Échec de la sélection de l\'image : $error';
  }

  @override
  String get apPercentDiscountMax =>
      'La remise en pourcentage ne peut pas dépasser 100%.';

  @override
  String get apBarcodeRequired =>
      'Le champ code-barres est obligatoire selon les paramètres.';

  @override
  String get apSupplierRequired =>
      'Le champ fournisseur est obligatoire selon les paramètres.';

  @override
  String get apWarehouseRequired =>
      'La sélection de l\'entrepôt est obligatoire selon les paramètres.';

  @override
  String get apImageRequired =>
      'L\'image du produit est obligatoire selon les paramètres.';

  @override
  String get apMfgDateFormatError =>
      'Format de date de fabrication invalide. Utilisez jour/mois/année (ex. 15/01/2026).';

  @override
  String get apExpDateFormatError =>
      'Format de date d\'expiration invalide. Utilisez jour/mois/année (ex. 15/01/2026).';

  @override
  String get apExpDateAfterMfg =>
      'La date d\'expiration doit être postérieure ou égale à la date de fabrication.';

  @override
  String get apConversionFactorGt0 =>
      'Le facteur de conversion doit être supérieur à 0 pour chaque unité supplémentaire.';

  @override
  String get apAddAtLeastOneColor => 'Ajoutez au moins une couleur.';

  @override
  String get apColorNameRequired => 'Le nom de la couleur est obligatoire.';

  @override
  String get apAddAtLeastOneSize => 'Ajoutez au moins une taille par couleur.';

  @override
  String get apSizeRequired => 'Le champ taille est obligatoire.';

  @override
  String apDuplicateSize(Object color, Object size) {
    return 'La taille \"$size\" est en double dans la couleur \"$color\".';
  }

  @override
  String get apQtyMustBeNonNeg =>
      'La quantité doit être un nombre entier supérieur ou égal à 0.';

  @override
  String get apDuplicateBarcodeVariants =>
      'Code-barres en double trouvé dans les variantes.';

  @override
  String get apBarcodeUsedByOther =>
      'Ce code-barres est utilisé par un autre produit.';

  @override
  String get apVariantBarcodeTaken =>
      'Le code-barres de la variante est déjà utilisé.';

  @override
  String get apDuplicateSizeInColor =>
      'La taille est en double dans la même couleur.';

  @override
  String get apQtyMustBeGe0 => 'La quantité doit être supérieure ou égale à 0.';

  @override
  String get apBarcodeAlreadyUsed => 'Code-barres déjà utilisé.';

  @override
  String apSaveFailed(Object error) {
    return 'Échec de l\'enregistrement du produit : $error';
  }

  @override
  String get apProductSaved =>
      'Produit enregistré. Vous pouvez saisir un nouveau produit.';

  @override
  String get apChooseColorTitle => 'Choisir une couleur';

  @override
  String get apChooseColorSubtitle =>
      'Choisissez une couleur pour représenter cette option (facultatif).';

  @override
  String get apApplyUniformQty => 'Appliquer une quantité uniforme';

  @override
  String get apEnterQtyHint => 'Entrez la quantité (0 ou plus)';

  @override
  String get apSizeLabel => 'Taille';

  @override
  String get apChooseSizeTooltip => 'Choisir la taille';

  @override
  String get apQtyLabel => 'Quantité';

  @override
  String get apBarcodeOptional => 'Code-barres (facultatif)';

  @override
  String get apDeleteAction => 'Supprimer';

  @override
  String get apColorNameLabel => 'Nom de la couleur';

  @override
  String get apColorPickerTooltip => 'Choisir la couleur (HEX)';

  @override
  String get apDeleteColorTooltip => 'Supprimer la couleur';

  @override
  String get apSizesAndQuantities => 'Tailles et quantités';

  @override
  String get apNoSizesYet =>
      'Aucune taille pour le moment. Ajoutez au moins une taille.';

  @override
  String get apAddSizeBtn => 'Ajouter une taille';

  @override
  String apColorTotal(Object count) {
    return 'Total couleur : $count';
  }

  @override
  String get apAddNewColor => 'Ajouter une nouvelle couleur';

  @override
  String get apApplyQtyAllSizes =>
      'Appliquer une quantité uniforme à toutes les tailles';

  @override
  String get apNoColorsYet =>
      'Aucune couleur pour le moment. Ajoutez une couleur pour commencer.';

  @override
  String apProductCodeHint(Object code) {
    return 'Code produit : $code';
  }

  @override
  String get apCancelTooltip => 'Annuler';

  @override
  String get apSavingLabel => 'Enregistrement...';

  @override
  String get apSaveAndAddNew => 'Enregistrer et ajouter';

  @override
  String get apProductData => 'Données du produit';

  @override
  String get apProductNameLabel => 'Nom du produit';

  @override
  String get apNameRequired => 'Le nom est obligatoire';

  @override
  String get apDescriptionLabel => 'Description';

  @override
  String get apProductImage => 'Image du produit';

  @override
  String get apCategoryLabel => 'Catégorie';

  @override
  String get apCategoryHint => 'Tapez ou choisissez dans la liste';

  @override
  String get apBrandLabel => 'Marque';

  @override
  String get apBrandHint => 'Tapez ou choisissez dans la liste';

  @override
  String get apGradeLabel => 'Classe / Qualité';

  @override
  String get apGradeHint => 'Choisissez la classe (facultatif)';

  @override
  String get apNoCategory => '— Sans catégorie —';

  @override
  String get apGradeA => 'Classe A — Excellent';

  @override
  String get apGradeB => 'Classe B — Très bien';

  @override
  String get apGradeC => 'Classe C — Bien';

  @override
  String get apGradeFirst => 'Première qualité';

  @override
  String get apGradeSecond => 'Deuxième qualité';

  @override
  String get apGradeThird => 'Troisième qualité';

  @override
  String get apCommercial => 'Article commercial';

  @override
  String get apEconomical => 'Article économique';

  @override
  String get apWarehouseLabel => 'Entrepôt';

  @override
  String get apNoWarehousesInDb => 'Aucun entrepôt dans la base de données';

  @override
  String get apChooseWarehouse => 'Choisir l\'entrepôt';

  @override
  String get apNoWarehouseLink => '— Sans lien d\'entrepôt —';

  @override
  String get apStockBaseType => 'Type de stock de base';

  @override
  String get apStockTypePiece => 'Nombre (pièce comme base)';

  @override
  String get apStockTypeWeight => 'Poids (kilogramme comme base)';

  @override
  String get apStockTypeClothing => 'Vêtements (couleurs & tailles)';

  @override
  String get apEditColorsSizes => 'Modifier les couleurs et tailles';

  @override
  String get apSupplierInfo => 'Informations fournisseur';

  @override
  String get apSupplierLabel => 'Fournisseur';

  @override
  String get apSupplierHint => 'Tapez ou choisissez dans les enregistrements';

  @override
  String get apSupplierCodeOptional => 'Code fournisseur (facultatif)';

  @override
  String get apExtraUnitsOptional =>
      'Unités de vente supplémentaires (facultatif)';

  @override
  String get apExtraUnitsDesc =>
      'ex. : Carton, couche, kilogramme… chacun avec code-barres optionnel et facteur de conversion vers le stock de base.';

  @override
  String get apAddUnit => 'Ajouter une unité';

  @override
  String get apNoExtraUnits => 'Aucune unité supplémentaire pour le moment.';

  @override
  String apUnitNumber(Object number) {
    return 'Unité #$number';
  }

  @override
  String get apUnitNameLabel => 'Nom de l\'unité';

  @override
  String get apSymbolLabel => 'Symbole';

  @override
  String get apConversionFactor => 'Facteur de conversion vers la base';

  @override
  String get apBarcodeOptionalLabel => 'Code-barres (facultatif)';

  @override
  String get apBarcodeEan13 => 'Code-barres (EAN-13)';

  @override
  String get apBarcodeCode128 => 'Code-barres (Code 128)';

  @override
  String get apBarcodeValue => 'Valeur du code-barres';

  @override
  String get apCaptureFromCamera => 'Capture depuis la caméra';

  @override
  String get apReadFromScanner => 'Lire depuis le scanner de codes-barres';

  @override
  String get apScanProductBarcode => 'Scanner le code-barres du produit';

  @override
  String get apGenerateNewBarcode => 'Générer un nouveau code-barres numérique';

  @override
  String get apWeightPriceNote =>
      'Calculé par kilogramme (stock basé sur le poids).';

  @override
  String get apPricingSection => 'Tarification';

  @override
  String get apPurchasePriceLabel => 'Prix d\'achat';

  @override
  String get apSuggestedFromCost => 'Suggéré depuis le prix d\'achat';

  @override
  String get apSellPriceLabel => 'Prix de vente';

  @override
  String get apSellBelowBuyWarning =>
      'Avertissement : le prix de vente est inférieur au prix d\'achat (vous pouvez continuer).';

  @override
  String get apTaxSection => 'Taxe';

  @override
  String get apTaxExempt => 'Exonéré';

  @override
  String get apCustomTax => 'Personnalisé';

  @override
  String get apTaxExemptFull => 'Exonéré de taxe';

  @override
  String get apTax5 => 'Taxe 5%';

  @override
  String get apTax10 => 'Taxe 10%';

  @override
  String get apTax15 => 'Taxe 15%';

  @override
  String get apCustomRate => 'Taux personnalisé';

  @override
  String get apTaxPercentLabel => 'Taux de taxe %';

  @override
  String apSellIncludingTax(Object amount) {
    return 'Vente TTC (approx.) : $amount';
  }

  @override
  String get apDiscountType => 'Type de remise';

  @override
  String get apPercentDiscount => 'Pourcentage (%)';

  @override
  String get apFixedAmountDiscount => 'Montant (FDJ)';

  @override
  String get apDiscountValue => 'Valeur de la remise';

  @override
  String apExampleNumber(Object number) {
    return 'ex. : $number';
  }

  @override
  String get apMinSellPrice => 'Prix de vente minimum';

  @override
  String get apOptionalLabel => 'Facultatif';

  @override
  String get apProfitMargin => 'Marge bénéficiaire (prix de vente vs achat)';

  @override
  String get apInventorySection => 'Gestion de l\'inventaire';

  @override
  String get apTrackInventory => 'Suivi de l\'inventaire';

  @override
  String get apTrackInventoryOff =>
      'Lorsque désactivé, les quantités ne seront pas enregistrées pour ce produit';

  @override
  String get apWeightSales =>
      'Par kilogramme — supporte les décimales (0,25, 0,5, 1,5…)';

  @override
  String get apWeightThreshold =>
      'Par kilogramme (ex. : 1 = alerte en dessous de 1 kg)';

  @override
  String get apStockQty => 'Quantité en stock';

  @override
  String get apAlertThreshold => 'Alerter en dessous de';

  @override
  String apVariantsStockInfo(Object total) {
    return 'Stock géré via les couleurs et tailles. Total actuel : $total';
  }

  @override
  String get apNetWeightLabel => 'Poids net (grammes) — facultatif';

  @override
  String get apNetWeightHint =>
      'Rempli automatiquement depuis le code-barres GS1 ou le poids intégré';

  @override
  String get apMfgDateLabel => 'Date de fabrication — facultatif';

  @override
  String get apPickFromCalendar => 'Choisir dans le calendrier';

  @override
  String get apDateFormat => 'jour/mois/année';

  @override
  String get apExpDateLabel => 'Date d\'expiration — facultatif';

  @override
  String get apExpiryAlertDays => 'Jours d\'alerte avant expiration';

  @override
  String get apExpiryAlertHint =>
      'Lorsque la date d\'expiration est définie : 1–365 (vide = par défaut des paramètres)';

  @override
  String get apExpiryAlertNote =>
      'Utilisé uniquement avec la «date d\'expiration» ; l\'alerte apparaît dans le panneau de notification dans cette période avant la date.';

  @override
  String get apInternalNotes => 'Notes internes';

  @override
  String get apInternalNotesHint =>
      'Non visible par les clients — pour l\'équipe uniquement';

  @override
  String get apTags => 'Étiquettes';

  @override
  String get apTagsHint =>
      'Séparées par des virgules ou des espaces — pour la recherche et le filtrage';

  @override
  String get apChooseFromList => 'Choisir dans la liste';

  @override
  String get apImageSelected =>
      'Image sélectionnée (aperçu web non disponible)';

  @override
  String get apTapToAddImage =>
      'Appuyez pour ajouter une image depuis la galerie';

  @override
  String get apManualEditActive =>
      'Modification manuelle active — le prix de vente ne se mettra pas à jour automatiquement lorsque le coût change.';

  @override
  String get apRelinkToCost => ' Relier au coût d\'achat';

  @override
  String peVariantSummary(Object colors, Object sizes, Object total) {
    return 'Couleurs: $colors • Tailles: $sizes • Total: $total';
  }

  @override
  String peDuplicateSizeInColor(Object colorName, Object size) {
    return 'La taille \"$size\" est dupliquée dans la couleur \"$colorName\".';
  }

  @override
  String peGrandTotal(Object total) {
    return 'Total: $total';
  }

  @override
  String peUnitFactor(Object factor, Object unitName) {
    return '$unitName — facteur $factor';
  }

  @override
  String peColorSizeInventoryHint(Object total) {
    return 'Gestion des stocks par couleurs et tailles. Total actuel: $total';
  }

  @override
  String get aiBaseForInstallments =>
      'Montant après l\'avance (base de l\'échelonnement)';

  @override
  String get aiProductsTab => 'Produits';

  @override
  String get aiNoItemsWithBarcode =>
      'Aucun article pour le moment.\nScannez le code-barres ci-dessus ou ajoutez via la recherche de l\'écran principal.\nRecherchez un produit ou scannez un code-barres pour ajouter.';

  @override
  String get aiNoItemsWithoutBarcode =>
      'Aucun article pour le moment.\nAjoutez des produits via la recherche de l\'écran principal.\nRecherchez un produit ou scannez un code-barres pour ajouter.';

  @override
  String aiMaxDiscountHint(Object percent) {
    return 'Maximum autorisé: $percent% — calculé à partir du prix minimum par article.';
  }

  @override
  String get aiNumbersResultHint =>
      'Résultat des chiffres et premier versement le cas échéant, avant de passer aux données client.';

  @override
  String get aiNumbersResultWithDiscountHint =>
      'Résultat des chiffres après remise et taxe, et premier versement le cas échéant, avant de passer aux données client.';

  @override
  String get aiPriceDetails => 'Détails du prix';

  @override
  String get aiAmountBreakdown => 'Ventilation des montants';

  @override
  String aiLoyaltyDiscountLabel(Object amount) {
    return 'Remise fidélité: -$amount FDJ';
  }

  @override
  String aiSelectPaymentMethod(Object methods) {
    return 'Sélectionnez $methods, puis complétez les données client et les champs liés au type de paiement.';
  }

  @override
  String get aiRequiredForDebtInstallment => 'Requis pour dette/échelonnement';

  @override
  String get aiQRMapHint => 'QR imprimé ouvre les cartes lors du scan';

  @override
  String get aiDeliveryHint =>
      'Pour la livraison: entrez le nom du client et l\'adresse de livraison (tous deux requis). Des suggestions de nom apparaissent de la base de données clients pendant la saisie.';

  @override
  String get aiDebtInstallmentHint =>
      'Important: pour la dette/l\'échelonnement, appuyez sur le nom du client dans les suggestions pour lier la vente à sa carte (taper le nom manuellement ne suffit pas s\'il ne correspond pas exactement à un enregistrement).';

  @override
  String get aiHideDetails => 'Masquer les détails';

  @override
  String get aiPriceDetailsAndDiscount => 'Détails du prix et de la remise';

  @override
  String aiItemPriceSummary(Object min, Object price) {
    return 'Prix $price · Min $min';
  }

  @override
  String aiItemGrossTotal(Object total) {
    return 'Total: $total';
  }

  @override
  String get aiSellPricePerUnit => 'Prix de vente (par unité)';

  @override
  String get aiInvoiceLineBeforeDiscount =>
      'Total de la ligne avant remise facture';

  @override
  String get aiInvoiceLineDiscountShare =>
      'Part de la remise facture pour cette ligne';

  @override
  String get aiInvoiceLineAfterDiscount =>
      'Total après remise facture (pour cette ligne)';

  @override
  String get aiPercentDiscountDistribution =>
      'La remise en pourcentage est répartie sur les lignes selon la contribution de chaque ligne au total des articles.';

  @override
  String get aiCancel => 'Annuler';

  @override
  String get aiEnterValidQuantity => 'Entrez un nombre valide 1 ou plus';

  @override
  String aiInstallmentMinDownPaymentError(Object amount, Object percent) {
    return 'Vente à tempérament: l\'avance doit être d\'au moins $percent% du total de la facture (≈$amount). Ajustez le champ d\'avance ou vérifiez «Échelonnement → Paramètres d\'échelonnement».';
  }

  @override
  String aiDebtCapExceededInvoice(Object cap, Object remaining) {
    return 'Limite de dette facture: le reste ($remaining) dépasse le plafond $cap. Ajustez le total, le montant reçu, ou «Dettes → Paramètres de dette».';
  }

  @override
  String aiDebtCapExceededCustomer(
    Object cap,
    Object existing,
    Object invoice,
  ) {
    return 'Limite de dette client: total restant actuel ≈ $existing, la facture ajoute $invoice (dépasse $cap). Liez le client depuis la liste, réduisez le montant, ou vérifiez les paramètres de dette.';
  }

  @override
  String aiInvoiceSaveFailed(Object error) {
    return 'Échec de l\'enregistrement de la facture — $error. Vérifiez les articles et le total avant de réessayer.';
  }

  @override
  String aiServiceOrderCloseFailed(Object orderId) {
    return 'Échec de la fermeture du ticket de maintenance lié $orderId';
  }

  @override
  String get aiServiceOrderUpdateWarning =>
      'Attention: la facture a été enregistrée mais le statut du ticket de maintenance lié n\'a pas pu être mis à jour automatiquement. Veuillez le vérifier manuellement.';

  @override
  String aiReturnScreenTitle(Object id) {
    return 'Facture #$id';
  }

  @override
  String aiOpenReturnScreen(Object total) {
    return 'Ouvrir l\'écran de retour (produits uniquement) ?\nTotal original: $total';
  }

  @override
  String get aiLoadingColorsSizes => 'Chargement des couleurs et tailles…';

  @override
  String aiAvailableQuantity(Object qty) {
    return 'Disponible: $qty';
  }

  @override
  String get aiCurrentlySelected => 'Sélectionné actuellement';

  @override
  String get aiUnitPiece => 'Pièce';

  @override
  String get aiParkedSalesHint =>
      'Enregistré localement sur cet appareil. Vous pouvez reprendre la vente plus tard depuis «Factures ← Ventes en attente».';

  @override
  String get aiScanToAdd => 'Scannez — sera ajouté automatiquement';

  @override
  String get apTrackStock => 'Gère la quantité et les alertes de stock bas';

  @override
  String get apNoTrackDesc =>
      'La quantité devient 0, aucune alerte de stock affichée';

  @override
  String get ipStatusDisabled => 'Désactivé';

  @override
  String get addFirstProduct => '+ Ajouter le premier produit';

  @override
  String apLoadTemplateFailed(Object error) {
    return 'Échec du chargement du modèle. Le champ fonctionnera en mode manuel.\n$error';
  }

  @override
  String apVariantSummaryLine(Object colors, Object sizes, Object total) {
    return 'Couleurs: $colors • Tailles: $sizes • Total: $total';
  }

  @override
  String apMarginHint(Object min, Object percent) {
    return 'Marge $percent% sur le coût; prix min = $min';
  }

  @override
  String apMarginPctValue(Object value) {
    return '$value%';
  }

  @override
  String get apTrackDisabledHint =>
      'Lorsque désactivé, les quantités ne sont pas suivies pour ce produit';

  @override
  String apOptionalHintIQD(Object amount) {
    return 'Optionnel — $amount';
  }

  @override
  String apMinSellPriceHintIQD(Object amount) {
    return 'Prix de vente min — $amount';
  }

  @override
  String get csStatusIndebted => 'Débiteur';

  @override
  String get csStatusCreditor => 'Créancier';

  @override
  String get csStatusDistinguished => 'Distingué';

  @override
  String get csClearFilter => 'Effacer le filtre';

  @override
  String get csIndebtedPlural => 'Débiteurs';

  @override
  String get csCreditorPlural => 'Créanciers';

  @override
  String get csDistinguishedPlural => 'Distingués';

  @override
  String get csNoDues => 'Aucune dette';

  @override
  String get csDebtPrefix => 'Dette';

  @override
  String get csCreditPrefix => 'Crédit';

  @override
  String get csDeleteCustomer => 'Supprimer le client';

  @override
  String csDeleteCustomerConfirm(Object name) {
    return 'Supprimer « $name » ?';
  }

  @override
  String csDeleteFailed(Object error) {
    return 'Échec de la suppression : $error';
  }

  @override
  String get csDeleteSelectedCustomers => 'Supprimer les clients sélectionnés';

  @override
  String csDeleteSelectedConfirm(Object count) {
    return '$count client(s) seront supprimés. Êtes-vous sûr ?';
  }

  @override
  String get csAlertsTooltip =>
      'Alertes : retards, factures crédit, stock et échéanciers';

  @override
  String get csRefreshFromCloud =>
      'Rafraîchir la liste depuis le cloud & synchroniser — F5';

  @override
  String get csLastUpdatedNow => 'Dernière mise à jour : à l\'instant — F5';

  @override
  String csLastUpdatedMinutesAgo(Object minutes) {
    return 'Dernière mise à jour : il y a $minutes min — F5';
  }

  @override
  String csLastUpdatedHoursAgo(Object hours) {
    return 'Dernière mise à jour : il y a $hours h — F5';
  }

  @override
  String csTotalShowing(Object shown, Object total) {
    return 'Total : $total · affichés : $shown';
  }

  @override
  String csTotalCustomersShowing(Object shown, Object total) {
    return 'Total clients : $total | affichés : $shown';
  }

  @override
  String csSelectedCount(Object selected, Object total) {
    return 'Sélectionné : $selected / $total';
  }

  @override
  String csSelectedCountPage(Object selected, Object total) {
    return 'Sélectionné : $selected — affichés sur la page : $total';
  }

  @override
  String get csDeleteSelectedTooltip => 'Supprimer la sélection';

  @override
  String get csDeleteSelectedLabel => 'Supprimer la sélection';

  @override
  String get csAddCustomer => 'Ajouter un client';

  @override
  String get csSearchFilter => 'Recherche et filtre';

  @override
  String get csSearchDescription =>
      'Recherche par nom, téléphone ou email. Les ventes à crédit et les échéanciers sont liés au client depuis l\'écran de vente.';

  @override
  String get csSearchInputHint => 'Recherche par nom, téléphone ou email…';

  @override
  String get csSearchApplyHint =>
      'Appliqué automatiquement en une fraction de seconde — Entrée ou bouton Appliquer pour plus de clarté. Raccourci : Ctrl+F';

  @override
  String get csSortLabel => 'Trier';

  @override
  String get csSortNameAZ => 'Nom (A–Z)';

  @override
  String get csSortNameZA => 'Nom (Z–A)';

  @override
  String get csSortMostPurchased => 'Plus acheté';

  @override
  String get csSortLargestDebts => 'Dettes les plus élevées';

  @override
  String get csSortNewest => 'Plus récent';

  @override
  String get csSearch => 'Recherche';

  @override
  String get csClearTooltip => 'Effacer';

  @override
  String get csApplySearchLabel => 'Appliquer la recherche';

  @override
  String get csNoCustomersYet => 'Aucun client pour le moment';

  @override
  String get csNoMatchingCustomers =>
      'Aucun client ne correspond à la recherche ou au filtre';

  @override
  String get csColName => 'Client';

  @override
  String get csColPhone => 'Téléphone';

  @override
  String get csColTotalPurchases => 'Achats totaux';

  @override
  String get csColDueBalance => 'Solde dû';

  @override
  String get csColStatus => 'Statut';

  @override
  String csDebtsLabel(Object count) {
    return 'Dettes ×$count';
  }

  @override
  String get csOpenDebtsTooltip => 'Ouvrir les dettes crédit liées';

  @override
  String csInstallmentsLabel(Object count) {
    return 'Échéanciers ×$count';
  }

  @override
  String get csOpenInstallmentsTooltip => 'Ouvrir les plans d\'échéance';

  @override
  String get csCallLabel => 'Appeler';

  @override
  String csCallTooltip(Object phone) {
    return 'Appeler $phone';
  }

  @override
  String csCustomerInfo(Object date, Object id, Object loyalty) {
    return '$id · fidélité $loyalty · $date';
  }

  @override
  String get csMoreTooltip => 'Plus';

  @override
  String get csEditData => 'Modifier les données';

  @override
  String get csCall => 'Appeler';

  @override
  String get csSortTooltip => 'Recherche';

  @override
  String get cfLoadFailedAfterAdd =>
      'Échec du chargement des données client après ajout';

  @override
  String get cfLoadFailed => 'Échec du chargement des données client';

  @override
  String get cfTitleEdit => 'Modifier les données du client';

  @override
  String get cfFillBasic =>
      'Remplissez les données de base. Les champs optionnels peuvent rester vides.';

  @override
  String get cfNameHint => 'Nom complet tel qu\'affiché sur les factures';

  @override
  String get cfPhoneHint => 'Numéro de téléphone (optionnel)';

  @override
  String get cfPhone2Hint => 'Numéro de téléphone supplémentaire';

  @override
  String get cfPhonePrimaryExample =>
      'Exemple : 07701234567 — ne doit pas dupliquer un autre client (distingue les noms similaires)';

  @override
  String get cfPhone2Example => 'Exemple : 07801234567';

  @override
  String get cfDeleteNumber => 'Supprimer le numéro';

  @override
  String get cfAddAnotherNumber => 'Ajouter un autre numéro';

  @override
  String get cfAddressHint => 'Adresse (optionnel)';

  @override
  String get cfAddressExample => 'Ville, quartier';

  @override
  String get cfEmailHint => 'E-mail (optionnel)';

  @override
  String get cfNotesHint => 'Notes (optionnel)';

  @override
  String get cfNotesDescription => 'Préférences du client, notes internes…';

  @override
  String cfSaveFailed(Object error) {
    return 'Échec de la sauvegarde : $error';
  }

  @override
  String cfRegisteredSince(Object date) {
    return 'Inscrit depuis le $date';
  }

  @override
  String get ctDeleteContact => 'Supprimer le contact';

  @override
  String get ctIndebted => 'Débiteur';

  @override
  String get ctCreditor => 'Créancier';

  @override
  String get ctTitle => 'Contacts clients';

  @override
  String get ctRefresh => 'Actualiser';

  @override
  String get ctNewCustomer => 'Nouveau client';

  @override
  String get ctSort => 'Trier';

  @override
  String get ctSortNameAZ => 'Nom (A–Z)';

  @override
  String get ctSortBalanceSize => 'Taille du solde';

  @override
  String get ctSearchHint => 'Recherche par nom, téléphone ou e-mail';

  @override
  String get ctSearchExample => 'Exemple : Mohammed, 077…, name@…';

  @override
  String get ctIdSearchLabel => 'Numéro ID / Code';

  @override
  String get ctIdSearchExample => 'Exemple : 12 ou 000012';

  @override
  String get ctApplySearch => 'Appliquer la recherche';

  @override
  String get ctClearFilter => 'Effacer le filtre';

  @override
  String get ctDebtOverdueLabel => 'En retard ou crédit';

  @override
  String get ctDebtOverdueDescription =>
      'Factures de vente à crédit non retournées, ou solde débit sur le compte — à contacter concernant la dette.';

  @override
  String get ctInstallmentsLabel => 'Échéanciers';

  @override
  String get ctInstallmentsDescription =>
      'A un plan d\'échéance enregistré — à contacter concernant les échéances.';

  @override
  String get ctNoContactsYet => 'Aucun contact pour le moment';

  @override
  String get ctNoResults =>
      'Aucun résultat correspondant. Modifiez la recherche ou ajoutez un client.';

  @override
  String get ctColBalance => 'Solde';

  @override
  String get ctColCustomer => 'Client';

  @override
  String get ctColStatus => 'Statut';

  @override
  String get ctColBalanceHeader => 'Solde';

  @override
  String get ctColEmail => 'E-mail';

  @override
  String get ctColPhone => 'Téléphone';

  @override
  String get ctColCustomerHeader => 'Client';

  @override
  String get ctEditData => 'Modifier les données';

  @override
  String ctDeleteConfirm(Object name) {
    return 'Supprimer « $name » du système ?';
  }

  @override
  String ctDeleteFailed(Object error) {
    return 'Échec de la suppression : $error';
  }

  @override
  String ctShowing(Object count) {
    return 'Affichés : $count';
  }

  @override
  String ctCreditSaleLabel(Object count) {
    return 'Ventes crédit ×$count';
  }

  @override
  String ctInstallmentLabel(Object count) {
    return 'Échéanciers ×$count';
  }

  @override
  String get lsSaveSuccess => 'Paramètres de fidélité enregistrés';

  @override
  String lsSaveFailed(Object error) {
    return 'Échec de l\'enregistrement : $error';
  }

  @override
  String get lsTitle => 'Paramètres de fidélité client';

  @override
  String get lsSave => 'Enregistrer';

  @override
  String get lsWhyNotSpoilTitle =>
      'Pourquoi « n\'abîme »-t-il pas les profits ?';

  @override
  String get lsWhyNotSpoilBody =>
      'Les points sont une subvention marketing : enregistrés comme remise de fidélité séparée de la marge. L\'attribution des points ne modifie pas le coût d\'achat ; la réduction diminue ce que le client paie en espèces selon vos règles.';

  @override
  String get lsEnablePoints => 'Activer le programme de points';

  @override
  String get lsEnablePointsSubtitle =>
      'Lorsque désactivé, les factures sont enregistrées sans collecte ni rédemption';

  @override
  String get lsPointsPerThousand =>
      'Points pour 1 000 FDJ de net de facture éligible';

  @override
  String get lsRedemptionValue =>
      'Valeur de réduction en francs par point lors de la rédemption';

  @override
  String get lsMinRedemption =>
      'Points minimum pour une rédemption unique (0 = pas de limite)';

  @override
  String get lsMaxRedemptionPercent =>
      'Max % du net de facture couvert par les points';

  @override
  String get lsAwardWhenTitle => 'Quand les points sont-ils attribués ?';

  @override
  String get lsAwardCashSale => 'Vente au comptant';

  @override
  String get lsAwardDelivery => 'Livraison';

  @override
  String get lsAwardInstallment => 'Échéance';

  @override
  String get lsAwardCreditWithAdvance => 'Vente à crédit avec acompte';

  @override
  String llLoadFailed(Object error) {
    return 'Échec du chargement : $error';
  }

  @override
  String get llGranted => 'Accordés';

  @override
  String get llRedeemed => 'Échangés';

  @override
  String get llTitle => 'Registre des points de fidélité';

  @override
  String get llRefresh => 'Actualiser';

  @override
  String get llNoData =>
      'Aucune transaction — activez la fidélité dans les paramètres et enregistrez des ventes liées à des clients.';

  @override
  String llCustomerId(Object id) {
    return 'Client #$id';
  }

  @override
  String llBalance(Object balance) {
    return 'Solde $balance';
  }

  @override
  String get svAddReceipt => 'Bon de réception';

  @override
  String get svDispenseReceipt => 'Bon de sortie';

  @override
  String get svTransferBetween => 'Transfert entre entrepôts';

  @override
  String get svStocktaking => 'Inventaire entrepôt';

  @override
  String get svSource => 'Fournisseur';

  @override
  String get svBranchShop => 'Succursale / autre magasin';

  @override
  String get svMobileSupplier => 'Fournisseur mobile';

  @override
  String get svManual => 'Manuel';

  @override
  String get svMainSupplier => 'Fournisseur principal';

  @override
  String get svSupplier1 => 'Fournisseur 1';

  @override
  String get svSupplier2 => 'Fournisseur 2';

  @override
  String get svNoActiveWarehouse =>
      'Aucun entrepôt actif — ajoutez-en un d\'abord';

  @override
  String get svStocktakingDisabled =>
      'Sauvegarde de l\'inventaire pas encore activée';

  @override
  String get svUnnamedItem => 'Article sans nom';

  @override
  String get svEnterMatchingItems =>
      'Saisissez des articles avec quantités et noms correspondant aux produits enregistrés';

  @override
  String get svWarning => 'Avertissement';

  @override
  String get svCancel => 'Annuler';

  @override
  String get svContinue => 'Continuer';

  @override
  String get svPleaseFillSourceName =>
      'Veuillez remplir le nom de la source du bon';

  @override
  String get svVoucherDocument => 'Bon de stock';

  @override
  String get svSaving => 'Enregistrement…';

  @override
  String get svConfirm => 'Confirmer';

  @override
  String get svWarehouse => 'Entrepôt';

  @override
  String get svNoActiveWarehouseAdd =>
      'Aucun entrepôt actif. Ajoutez-en depuis « Entrepôts ».';

  @override
  String get svReceivingWarehouse => 'Entrepôt de réception';

  @override
  String get svFromWarehouse => 'Depuis l\'entrepôt';

  @override
  String get svWarehouses => 'Entrepôts';

  @override
  String get svToWarehouse => 'Vers l\'entrepôt';

  @override
  String get svChoose => 'Choisir';

  @override
  String get svVoucherData => 'Données du bon';

  @override
  String get svVoucherType => 'Type de bon';

  @override
  String get svDate => 'Date';

  @override
  String get svSourceData => 'Données source';

  @override
  String get svSourceType => 'Type de source';

  @override
  String get svSourceRefOptional => 'Référence source (ID optionnel)';

  @override
  String get svSourceRefExample => 'Exemple : 15';

  @override
  String get svSourceName => 'Nom de la source';

  @override
  String get svSupplierName => 'Nom du fournisseur';

  @override
  String get svSourceEntityName => 'Nom de l\'entité source';

  @override
  String get svReferenceSettings => 'Paramètres de référence';

  @override
  String get svReference => 'Référence';

  @override
  String get svReferenceHint => 'Numéro de référence...';

  @override
  String get svOtherInfo => 'Autres informations';

  @override
  String get svSupplier => 'Fournisseur';

  @override
  String get svNotes => 'Notes';

  @override
  String get svAutoSupplierReceipt =>
      'Créer automatiquement un reçu fournisseur et lier au bon';

  @override
  String get svAutoSupplierReceiptDesc =>
      'Enregistre une entrée à payer pour le montant du bon puis la lie.';

  @override
  String get svAutoReturnRecord =>
      'Enregistrer automatiquement le retour fournisseur';

  @override
  String get svAutoReturnRecordDesc =>
      'Enregistre un paiement fournisseur sans caisse pour réduire le solde lors de la sortie de marchandises retournées.';

  @override
  String get svTotal => 'Total';

  @override
  String get svQuantity => 'Quantité';

  @override
  String get svUnitPrice => 'Prix unitaire';

  @override
  String get svItems => 'Articles';

  @override
  String get svAddItem => 'Ajouter un article';

  @override
  String get svDeleteItem => 'Supprimer l\'article';

  @override
  String get svItemQuantity => 'Quantité';

  @override
  String get svItemUnitPrice => 'Prix unitaire';

  @override
  String get svChooseProduct => 'Choisir un produit';

  @override
  String get svManualSelection => 'Sélection manuelle';

  @override
  String get svManualItemName => 'Nom de l\'article manuel';

  @override
  String svFromReceipt(Object number) {
    return 'Depuis le bon de réception #$number';
  }

  @override
  String svSupplierReturnNote(Object number) {
    return 'Retour fournisseur via bon de sortie #$number';
  }

  @override
  String svProductsNotFound(Object names) {
    return 'Produits introuvables par nom : $names';
  }

  @override
  String svItemsSkipped(Object count, Object names) {
    return 'Articles ignorés en raison d\'une non-concordance de nom : $names\nLa continuation enregistrera uniquement $count article(s).';
  }

  @override
  String svVoucherSaved(Object id, Object number) {
    return 'Bon #$id ($number) enregistré';
  }

  @override
  String get usRoleAdmin => 'Admin';

  @override
  String get usRoleEmployee => 'Employé';

  @override
  String get usNoPermission =>
      'Pas de permission — seuls les admins peuvent ajouter ou modifier les utilisateurs';

  @override
  String get usCannotDisableSelf =>
      'Vous ne pouvez pas désactiver votre propre compte tant que vous êtes connecté';

  @override
  String get usDisableUserTitle => 'Désactiver l\'utilisateur';

  @override
  String get usDisableUserDesc =>
      'Le compte sera arrêté et ils ne pourront plus se connecter.';

  @override
  String get usCancel => 'Annuler';

  @override
  String get usDisable => 'Désactiver';

  @override
  String get usDisabled => 'Désactivé';

  @override
  String get usTitle => 'Utilisateurs';

  @override
  String get usRefresh => 'Actualiser';

  @override
  String get usNewUser => 'Nouvel utilisateur';

  @override
  String get usNoActiveUsers => 'Aucun utilisateur actif';

  @override
  String get usNoActiveUsersHintAdmin =>
      'Appuyez sur le bouton ajouter pour créer un nouvel utilisateur';

  @override
  String get usNoActiveUsersHintManager =>
      'Connectez-vous en tant qu\'admin pour ajouter des utilisateurs';

  @override
  String get usIdCard => 'Carte d\'identité';

  @override
  String get usEdit => 'Modifier';

  @override
  String get usDisableButton => 'Désactiver';

  @override
  String get ufPhoneFormatHint =>
      'Utilisez le format téléphonique irakien (ex. : 07XXXXXXXXX)';

  @override
  String get ufEmailRequired =>
      'L\'e-mail est requis (utilisé comme nom de connexion)';

  @override
  String get ufEmailAlreadyRegistered => 'Cet e-mail est déjà enregistré';

  @override
  String get ufPasswordMinLength =>
      'Le mot de passe doit contenir au moins 6 caractères';

  @override
  String get ufPasswordMismatch =>
      'La confirmation du mot de passe ne correspond pas';

  @override
  String get ufEmailTaken =>
      'Cet e-mail est enregistré pour un autre utilisateur';

  @override
  String get ufInvalidPasswordOrMismatch =>
      'Mot de passe invalide ou confirmation incorrecte';

  @override
  String get ufTitleEdit => 'Modifier l\'utilisateur';

  @override
  String get ufTitleNew => 'Nouvel utilisateur';

  @override
  String get ufAccountData => 'Données du compte';

  @override
  String get ufAccountDataDesc =>
      'L\'e-mail est utilisé comme nom de connexion. Téléphone au format irakien courant (07…).';

  @override
  String get ufFullName => 'Nom complet';

  @override
  String get ufRequired => 'Obligatoire';

  @override
  String get ufRole => 'Rôle professionnel';

  @override
  String get ufRoleHint => 'Caissier, magasinier, …';

  @override
  String get ufEmailLogin => 'E-mail (nom de connexion)';

  @override
  String get ufPhoneIraq => 'Numéro de téléphone (Irak)';

  @override
  String get ufPhoneIraqHint => 'Numéros irakiens courants commençant par 07';

  @override
  String get ufPhone2Optional => 'Deuxième téléphone (optionnel)';

  @override
  String get ufPhone2Hint => 'Si disponible';

  @override
  String get ufPermissionPassword => 'Permission et mot de passe';

  @override
  String get ufAccountType => 'Type de compte';

  @override
  String get ufAccountEmployee => 'Employé (permissions détaillées)';

  @override
  String get ufAccountAdmin => 'Admin (toutes les permissions)';

  @override
  String get ufAdminNote =>
      'Le compte admin contourne les restrictions détaillées et reçoit un accès complet au système.';

  @override
  String get ufNewPasswordOptional => 'Nouveau mot de passe (optionnel)';

  @override
  String get ufPassword => 'Mot de passe';

  @override
  String get ufConfirmNewPassword => 'Confirmer le nouveau mot de passe';

  @override
  String get ufConfirmPassword => 'Confirmer le mot de passe';

  @override
  String get ufDetailedPermissions => 'Permissions détaillées';

  @override
  String get ufDetailedPermissionsDesc =>
      'Activez ce que cet employé peut accéder. Enregistré en base de données par utilisateur.';

  @override
  String get ufSaving => 'Enregistrement…';

  @override
  String get ufSave => 'Enregistrer';

  @override
  String get ufCancel => 'Annuler';

  @override
  String ufSaveFailed(Object error) {
    return 'Échec de la sauvegarde : $error';
  }

  @override
  String get eiRegenerateShiftCode => 'Régénérer le code de quart';

  @override
  String get eiRegenerateShiftCodeDesc =>
      'Un nouveau code sera généré. La carte d\'identité doit être imprimée/mise à jour et redistribuée.';

  @override
  String get eiCancel => 'Annuler';

  @override
  String get eiConfirm => 'Confirmer';

  @override
  String get eiShiftCodeRenewed => 'Code de quart régénéré.';

  @override
  String get eiTitle => 'Identités des employés';

  @override
  String get eiNoActiveUsers =>
      'Aucun utilisateur actif dans la base de données.';

  @override
  String get swTimeZero => '0 min';

  @override
  String swTimeHoursMinutes(Object hours, Object minutes) {
    return '${hours}h ${minutes}min';
  }

  @override
  String swTimeHoursOnly(Object hours) {
    return '${hours}h';
  }

  @override
  String swTimeMinutesOnly(Object minutes) {
    return '${minutes}min';
  }

  @override
  String get swHintCompact =>
      'Aperçu journalier ; touchez le jour pour voir les détails des quarts.';

  @override
  String get swHintFull =>
      'Sept colonnes (sam → ven) : axe 00:00–24:00 en chiffres latins ; chaque barre est un quart (nom et heure dans la barre).';

  @override
  String get swNoShifts => 'Aucun quart';

  @override
  String get swShiftSingular => 'quart';

  @override
  String get swShiftPlural => 'quarts';

  @override
  String get swTitle => 'Quarts des employés — hebdomadaire';

  @override
  String get swWeekTotalTime => 'Temps total de la semaine';

  @override
  String get swNextWeek => 'Semaine prochaine';

  @override
  String get swThisWeek => 'Cette semaine';

  @override
  String get swPrevWeek => 'Semaine précédente';

  @override
  String get rpSaleReceipt => 'Reçu de vente';

  @override
  String rpOperationNumber(Object id) {
    return 'Opération #$id';
  }

  @override
  String rpDateTime(Object date) {
    return 'Date : $date';
  }

  @override
  String get rpCustomer => 'Client';

  @override
  String rpCustomerWithValue(Object name) {
    return 'Client : $name';
  }

  @override
  String get rpDeliveryReceipt => 'Bon de livraison — détails via QR en bas';

  @override
  String rpPaymentMethod(Object method) {
    return 'Paiement : $method';
  }

  @override
  String rpEmployee(Object name) {
    return 'Employé : $name';
  }

  @override
  String get rpItems => 'Articles :';

  @override
  String rpBeforeDiscount(Object amount) {
    return 'Avant remise : $amount FDJ';
  }

  @override
  String rpDiscount(Object amount) {
    return 'Remise : $amount FDJ';
  }

  @override
  String rpTax(Object amount) {
    return 'Taxe : $amount FDJ';
  }

  @override
  String rpLoyaltyDiscount(Object amount) {
    return 'Remise fidélité : $amount FDJ';
  }

  @override
  String rpTotal(Object amount) {
    return 'Total : $amount FDJ';
  }

  @override
  String rpBarcode(Object code) {
    return 'Code-barres : $code';
  }

  @override
  String rpItemLine(Object name, Object qty, Object total) {
    return '• $name  |  Qté : $qty  |  $total';
  }

  @override
  String rpMoreItems(Object count) {
    return '… et $count autres articles (détails dans l\'app)';
  }

  @override
  String get rpDeliveryShort => 'Bon de livraison — QR en bas';

  @override
  String rpPaymentShort(Object method) {
    return 'Paiement : $method';
  }

  @override
  String get rpCash => 'Espèces';

  @override
  String get rpCredit => 'Crédit';

  @override
  String get rpInstallment => 'Échéance';

  @override
  String get rpDeliveryType => 'Livraison';

  @override
  String get rpCreditCollection => 'Recouvrement crédit';

  @override
  String get rpInstallmentPayment => 'Paiement échéance';

  @override
  String get rpSupplierPayment => 'Paiement fournisseur';

  @override
  String get rpCreditSummary => 'Résumé vente à crédit';

  @override
  String rpInvoiceTotal(Object amount) {
    return 'Total facture : $amount FDJ';
  }

  @override
  String rpAmountPaid(Object amount) {
    return 'Payé maintenant : $amount FDJ';
  }

  @override
  String rpRemaining(Object amount) {
    return 'Solde restant : $amount FDJ';
  }

  @override
  String get rpInstallmentSummary => 'Résumé échéancier (prix & intérêts)';

  @override
  String rpSalePriceTotal(Object amount) {
    return 'Total facture (prix de vente) : $amount FDJ';
  }

  @override
  String rpAdvancePayment(Object amount) {
    return 'Avance / 1er versement : $amount FDJ';
  }

  @override
  String rpFinancedAmount(Object amount) {
    return 'Montant après avance (base intérêt) : $amount FDJ';
  }

  @override
  String rpInterestRate(Object rate) {
    return 'Taux d\'intérêt : $rate%';
  }

  @override
  String rpInterestValue(Object amount) {
    return 'Montant intérêt : $amount FDJ';
  }

  @override
  String rpTotalWithInterest(Object amount) {
    return 'Total avec intérêts : $amount FDJ';
  }

  @override
  String rpPlannedMonths(Object count) {
    return 'Mois prévus : $count';
  }

  @override
  String rpSuggestedMonthly(Object amount) {
    return 'Échéance mensuelle suggérée : $amount FDJ';
  }

  @override
  String get rpInvoiceDetails => 'Détails facture';

  @override
  String get rpScanToOpen => 'Scannez pour ouvrir dans l\'app';

  @override
  String get rpReceiptTextSummary => 'Résumé texte du reçu';

  @override
  String get rpDebtorProfile => 'Profil débiteur';

  @override
  String get rpDebtDetails => 'Détails dette';

  @override
  String get rpReceiptSummary => 'Résumé du reçu';

  @override
  String get rpInstallmentPlan => 'Plan d\'échéance';

  @override
  String get rpInstallmentSchedule => 'Calendrier des versements';

  @override
  String get rpDeliveryMap => 'Carte de livraison';

  @override
  String get rpOpenInGoogleMaps => 'Ouvrir dans Google Maps';

  @override
  String get rpDetails => 'Détails';

  @override
  String get rpVoucherDetails => 'Détails du bon';

  @override
  String get rpScanToOpenVoucher => 'Scannez pour ouvrir les détails du bon';

  @override
  String get rpReturnItems => 'Articles retournés';

  @override
  String get rpBuyerAddressQr => 'QR adresse acheteur';

  @override
  String get rpScanToOpenMap => 'Scannez pour ouvrir sur la carte';

  @override
  String get rpOpNumber => 'Opération n°';

  @override
  String rpDateTimeFull(Object date) {
    return 'Date & heure : $date';
  }

  @override
  String get rpDeliveryNote =>
      'Bon de livraison — localisation via QR en bas de page.';

  @override
  String rpAddress(Object address) {
    return 'Adresse : $address';
  }

  @override
  String get rpItem => 'Article';

  @override
  String get rpQuantity => 'Qté';

  @override
  String get rpPrice => 'Prix';

  @override
  String get rpSubtotal => 'Sous-total';

  @override
  String rpSubtotalBeforeDiscount(Object amount) {
    return 'Sous-total avant remise : $amount FDJ';
  }

  @override
  String rpPercentDiscount(Object amount, Object percent) {
    return 'Remise $percent% : $amount FDJ';
  }

  @override
  String rpFinalTotal(Object amount) {
    return 'Total final : $amount FDJ';
  }

  @override
  String get rpInstallmentTable => 'Échéancier (par date d\'échéance)';

  @override
  String get rpDueDate => 'Échéance';

  @override
  String get rpAmount => 'Montant';

  @override
  String get rpStatus => 'Statut';

  @override
  String get rpPaidDate => 'Payé le';

  @override
  String get rpPaid => 'Payé';

  @override
  String get rpDue => 'Dû';

  @override
  String get rpInstallmentReceipt => 'Reçu d\'échéance';

  @override
  String rpInstallmentPlanRef(Object id) {
    return 'Plan d\'échéance #$id';
  }

  @override
  String rpOriginalInvoice(Object id) {
    return 'Facture originale #$id';
  }

  @override
  String rpReceiptVoucher(Object id) {
    return 'Bon de réception (liste factures) #$id';
  }

  @override
  String get rpPaidInstallments => 'Échéances payées (chronologique)';

  @override
  String get rpNoPaidInstallments => '— Aucune échéance payée —';

  @override
  String get rpRemainingInstallments => 'Échéances restantes & dates';

  @override
  String get rpAllInstallmentsPaid =>
      'Toutes les échéances de ce plan sont payées.';

  @override
  String get rpScanToOpenInvoice => 'Scannez pour ouvrir facture & articles';

  @override
  String get rpPlanRef => 'Référence plan';

  @override
  String get rpDebtPaymentReceipt => 'Reçu paiement dette';

  @override
  String get rpDebtDetailsAndPayments => 'Détails dette & paiements';

  @override
  String get rpScanToOpenDebtVoucher =>
      'Scannez pour ouvrir bon de recouvrement';

  @override
  String get rpPaymentRef => 'Référence paiement';

  @override
  String rpRegisteredInCustomers(Object id) {
    return 'Inscrit clients #$id';
  }

  @override
  String rpRecordedBy(Object name) {
    return 'Enregistré par : $name';
  }

  @override
  String rpAmountPaidInThis(Object amount) {
    return 'Montant payé cette transaction : $amount FDJ';
  }

  @override
  String rpDebtBefore(Object amount) {
    return 'Total dette avant paiement : $amount FDJ';
  }

  @override
  String rpDebtAfter(Object amount) {
    return 'Restant après paiement : $amount FDJ';
  }

  @override
  String get rpAutoDistribute =>
      'Les paiements sont répartis automatiquement sur les factures crédit, des plus anciennes.';

  @override
  String rpPaymentRecord(Object id) {
    return 'Enregistrement paiement #$id';
  }

  @override
  String get rpAllDebtPaid => 'Toute la dette crédit de ce client est réglée.';

  @override
  String get rpSupplierPaymentReceipt => 'Reçu paiement fournisseur';

  @override
  String rpPaidAmount(Object amount) {
    return 'Montant payé : $amount FDJ';
  }

  @override
  String rpPayableBefore(Object amount) {
    return 'Dû avant paiement : $amount FDJ';
  }

  @override
  String rpPayableAfter(Object amount) {
    return 'Dû après paiement : $amount FDJ';
  }

  @override
  String get rpDeductedFromCash => 'Montant déduit de la caisse.';

  @override
  String get rpNotDeductedFromCash =>
      'Non déduit de la caisse (paiement externe/bancaire).';

  @override
  String rpNote(Object text) {
    return 'Note : $text';
  }

  @override
  String rpVoucherRecord(Object id) {
    return 'Enregistrement bon #$id';
  }

  @override
  String rpInvoiceVoucher(Object id) {
    return 'Bon facture #$id';
  }

  @override
  String get rpClose => 'Fermer';

  @override
  String get rpSaleReceiptTitle => 'Reçu de vente';

  @override
  String get rpFullInvoiceDetails => 'Détails complets de la facture';

  @override
  String get rpNoPrinter => 'Aucune imprimante trouvée. Vérifiez la connexion.';

  @override
  String get rpNoPrinterFound =>
      'Aucune imprimante trouvée. Connectez une imprimante pour continuer.';

  @override
  String get rpPrintError =>
      'Impression directe échouée. Vérifiez les paramètres de l\'imprimante.';

  @override
  String rpInstallmentDetail(Object amount, Object date, Object number) {
    return 'Tranche #$number ($amount FDJ) échéance le $date';
  }

  @override
  String rpInstallmentLine(
    Object amount,
    Object date,
    Object number,
    Object paidStatus,
  ) {
    return 'Tranche $number — $amount FDJ — Échéance $date — $paidStatus';
  }

  @override
  String rpDebtPaymentReceiptTitle(Object name) {
    return 'Paiement crédit — $name';
  }

  @override
  String get rpSupplierDefaultName => 'Fournisseur';

  @override
  String get rpCustomerDefaultName => 'Client';

  @override
  String get rpRemainingInstallmentsReminder =>
      'Tranches restantes (rappels d\'échéance)';

  @override
  String rpReceiptItemsAmount(Object amount) {
    return '$amount FDJ';
  }

  @override
  String rpInvoicePlanRef(Object id) {
    return 'Plan de paiement #$id';
  }

  @override
  String rpMonthCount(Object count) {
    return 'Nombre de mois: $count';
  }

  @override
  String get rpTodayIndicator => '  (transaction du jour)';

  @override
  String get anHideAlert => 'Masquer l\'alerte';

  @override
  String get anHideConfirm =>
      'C\'est une alerte importante. Voulez-vous vraiment la masquer de la liste ?';

  @override
  String get anCancel => 'Annuler';

  @override
  String get anConfirm => 'Confirmer';

  @override
  String get anNotifications => 'Notifications';

  @override
  String get anRefresh => 'Actualiser';

  @override
  String get anMarkAllRead => 'Tout marquer comme lu';

  @override
  String anRefreshError(Object error) {
    return 'Échec de l\'actualisation : $error';
  }

  @override
  String get anEmpty => 'Aucune notification pour le moment';

  @override
  String get anHiddenNotifications => 'Notifications masquées';

  @override
  String get anShow => 'Afficher';

  @override
  String get anHide => 'Masquer';

  @override
  String get nnInvoices => 'Factures';

  @override
  String get nnProducts => 'Produits';

  @override
  String get nnInstallments => 'Tranches';

  @override
  String get nnDebts => 'Dettes';

  @override
  String get nnReports => 'Rapports';

  @override
  String get nnCash => 'Caisse';

  @override
  String get npInstallmentDue => 'Tranche due';

  @override
  String get npInstallmentLate => 'Tranche en retard';

  @override
  String get npStock => 'Stock';

  @override
  String get npNegativeSale => 'Vente négative';

  @override
  String get npExpiryHint => 'Rappel péremption';

  @override
  String get npDeferredSave => 'Sauvegarde différée';

  @override
  String get npReturn => 'Retour';

  @override
  String get npSummary => 'Résumé';

  @override
  String get npCash => 'Caisse';

  @override
  String get npCustomerDebt => 'Dette client';

  @override
  String get npDebtAge => 'Âge de la dette';

  @override
  String get npCustomerCap => 'Plafond client';

  @override
  String get npInvoiceCap => 'Plafond facture';

  @override
  String get npFinancedSale => 'Vente financée';

  @override
  String get npSystem => 'Système';

  @override
  String get npNow => 'Maintenant';

  @override
  String get npMinuteAgo => 'Il y a 1 minute';

  @override
  String get npTwoMinutesAgo => 'Il y a 2 minutes';

  @override
  String npMinutesAgo(Object count) {
    return 'Il y a $count minutes';
  }

  @override
  String get npHourAgo => 'il y a environ 1 heure';

  @override
  String get npTwoHoursAgo => 'Il y a 2 heures';

  @override
  String npHoursAgo(Object count) {
    return 'Il y a $count heures';
  }

  @override
  String npYesterday(Object time) {
    return 'Hier $time';
  }

  @override
  String get npTwoDaysAgo => 'Il y a 2 jours';

  @override
  String npDaysAgo(Object count) {
    return 'Il y a $count jours';
  }

  @override
  String npSaleInvoiceLine(Object date, Object id) {
    return 'Facture de vente #$id — $date';
  }

  @override
  String npSeller(Object name) {
    return 'Vendeur : $name';
  }

  @override
  String npCustomer(Object name) {
    return 'Client : $name';
  }

  @override
  String get npItem => 'Article';

  @override
  String npItemId(Object id) {
    return ' — ID #$id';
  }

  @override
  String npSoldInInvoice(Object after, Object before, Object qty) {
    return '  Vendu dans la facture : $qty — Solde avant : $before → après : $after';
  }

  @override
  String get npNegativeSaleTitle => 'La vente a entraîné un solde négatif';

  @override
  String get npShift => 'Quart';

  @override
  String get npCreditSaleSaved => 'Vente en tranche — facture enregistrée';

  @override
  String get npCreditSaleRegistered => 'Vente en tranche — enregistrée';

  @override
  String get npCreditSaleTitle => 'Vente à crédit (différé) — enregistrée';

  @override
  String get npRegisteredAt => 'Enregistré dans : écran Vente (PDV)';

  @override
  String npInvoiceLine(Object date, Object id) {
    return 'Facture #$id — $date';
  }

  @override
  String npTotalLine(Object advance, Object remaining, Object total) {
    return 'Total : $total FDJ — Payé : $advance FDJ — Reste : $remaining FDJ';
  }

  @override
  String get npInstallmentPlanError =>
      'Attention : impossible de créer automatiquement le plan — vérifiez les Tranches et liez la facture.';

  @override
  String npInstallmentPlanRef(Object id) {
    return 'Plan de paiement : #$id';
  }

  @override
  String npPlannedMonths(Object count) {
    return 'Mois prévus : $count';
  }

  @override
  String npMonthlyEstimate(Object amount) {
    return 'Tranche mensuelle estimée : $amount FDJ';
  }

  @override
  String npFinancedFromSale(Object amount) {
    return 'Financé par la vente : $amount FDJ';
  }

  @override
  String npTotalWithInterest(Object amount) {
    return 'Total avec intérêts (le cas échéant) : $amount FDJ';
  }

  @override
  String npItemLine(Object name, Object pid, Object qty, Object total) {
    return '• $name — #$pid — $qty — $total FDJ';
  }

  @override
  String get npMoreItemsInInvoice => '… et d\'autres articles dans la facture.';

  @override
  String get npLateInstallmentTitle => 'Tranche en retard — rappel';

  @override
  String npLateInstallmentBody(Object date, Object name, Object planRef) {
    return '$name$planRef — échéance $date';
  }

  @override
  String get npCustomerLabel => 'Client';

  @override
  String npPlanRef(Object id) {
    return ' — plan #$id';
  }

  @override
  String get npUpcomingTitle => 'Tranche à venir — rappel';

  @override
  String npUpcomingBody(Object date, Object name, Object planRef) {
    return '$name$planRef — $date';
  }

  @override
  String get npCustomerDebtTitle => 'Dette client';

  @override
  String npCustomerDebtBody(Object balance, Object extra, Object name) {
    return '$name$extra — reste $balance FDJ (différé, non tranche).';
  }

  @override
  String get npDebtAgeTitle => 'Facture différée — avertissement';

  @override
  String npDebtAgeBody(
    Object age,
    Object ageWord,
    Object customer,
    Object date,
    Object days,
    Object id,
  ) {
    return 'Selon les paramètres de dette ($days jours) : facture #$id — $customer — depuis le $date ($age $ageWord).';
  }

  @override
  String get npDay => 'jour';

  @override
  String get npDays => 'jours';

  @override
  String get npCustomerCapTitle => 'Plafond de dette client dépassé';

  @override
  String npCustomerCapBody(Object amount, Object cap, Object name) {
    return 'Selon les paramètres : total différé ouvert pour \"$name\" est $amount FDJ (plafond $cap FDJ).';
  }

  @override
  String npCustomerCapBodyNoCard(Object amount, Object cap, Object name) {
    return 'Selon les paramètres (sans fiche client) : \"$name\" — $amount FDJ (plafond $cap FDJ).';
  }

  @override
  String get npInvoiceCapTitle => 'Plafond de facture différée dépassé';

  @override
  String npInvoiceCapBody(
    Object cap,
    Object customer,
    Object date,
    Object id,
    Object remaining,
  ) {
    return 'Selon les paramètres : facture #$id — $customer — reste $remaining FDJ (plafond $cap FDJ) — date $date.';
  }

  @override
  String get npWithoutName => 'sans nom';

  @override
  String get npProductLabel => 'Produit';

  @override
  String get npNegativeStockTitle => 'Solde de stock négatif';

  @override
  String npNegativeStockBody(
    Object name,
    Object over,
    Object qty,
    Object unitWord,
  ) {
    return '\"$name\" — quantité actuelle $qty (survente de $over $unitWord).';
  }

  @override
  String get npOutOfStockTitle => 'Rupture de stock';

  @override
  String npOutOfStockBody(Object name) {
    return '\"$name\" — stock est zéro.';
  }

  @override
  String get npLowStockTitle => 'Alerte stock bas';

  @override
  String npLowStockBody(Object name, Object qty, Object threshold) {
    return '\"$name\" — quantité $qty (seuil $threshold).';
  }

  @override
  String get npUnit => 'unité';

  @override
  String get npUnits => 'unités';

  @override
  String get npExpiredTitle => 'Durée de vie expirée';

  @override
  String npExpiredBody(Object date, Object name) {
    return '\"$name\" — date dépassée ($date). Vérifiez l\'exposition ou l\'élimination selon la politique.';
  }

  @override
  String get npLastDay => 'Aujourd\'hui est le dernier jour de conservation';

  @override
  String npDaysRemaining(Object count) {
    return '$count restant(s) jusqu\'à expiration';
  }

  @override
  String get npNearExpiryTitle => 'Proche de la péremption';

  @override
  String npNearExpiryBody(Object date, Object name, Object period) {
    return '\"$name\" — conservation jusqu\'au $date ($period).';
  }

  @override
  String get npReturnTitle => 'Retour enregistré';

  @override
  String npReturnBody(
    Object count,
    Object customer,
    Object id,
    Object orig,
    Object total,
  ) {
    return 'Facture retournée #$id$orig — $customer — $count articles — $total FDJ';
  }

  @override
  String npOrigRef(Object id) {
    return ' ← original #$id';
  }

  @override
  String get npDailySummaryTitle => 'Résumé des ventes du jour';

  @override
  String npDailySummaryBody(Object total) {
    return 'Total des factures de vente (hors retours) pour aujourd\'hui : $total FDJ';
  }

  @override
  String get npLoggerNotifyFail =>
      'Échec de l\'actualisation des notifications';

  @override
  String get npRefreshHidden => 'Notifications masquées';

  @override
  String get npShow => 'Afficher';

  @override
  String get npHide => 'Masquer';

  @override
  String get spTitle => 'Plans d\'Abonnement';

  @override
  String get spSubtitle => 'Choisissez le plan adapté à votre activité';

  @override
  String get spJwtDescription =>
      'Les cartes ci-dessous servent uniquement à la comparaison et aux prix. Après le paiement, vous recevrez un jeton signé (JWT) — collez-le dans le champ d\'activation sous les cartes.';

  @override
  String get spLegacyDescription =>
      'Première carte : essai automatique de 15 jours (2 appareils). Les cartes suivantes sont des plans payants — après le paiement, entrez la clé dans le champ unifié ci-dessous.';

  @override
  String get spHowToSubscribe => 'Comment S\'abonner';

  @override
  String get spHowJwtStep1 =>
      '1. Contactez l\'équipe Maarey via les méthodes ci-dessous';

  @override
  String get spHowJwtStep2 => '2. Effectuez le paiement pour le plan souhaité';

  @override
  String get spHowJwtStep3 =>
      '3. Recevez le jeton d\'activation complet (JWT) de l\'administration';

  @override
  String get spHowJwtStep4 =>
      '4. Collez le jeton dans le champ unifié sous les cartes — le plan et le nombre d\'appareils sont extraits du jeton';

  @override
  String get spHowLegacyStep1 =>
      '1. Contactez l\'équipe Maarey via les méthodes ci-dessous';

  @override
  String get spHowLegacyStep2 =>
      '2. Dites-nous le plan souhaité et effectuez le paiement';

  @override
  String get spHowLegacyStep3 =>
      '3. Recevez la clé de licence de l\'administration';

  @override
  String get spHowLegacyStep4 =>
      '4. Collez la clé dans le champ unifié sous les cartes puis appuyez « Activer la Clé »';

  @override
  String get spContactWhatsApp => 'WhatsApp / Téléphone';

  @override
  String get spContactEmail => 'E-mail';

  @override
  String get spContinue => 'Continuer';

  @override
  String get spErrorPasteTokenFirst => 'Collez d\'abord le jeton de licence';

  @override
  String get spActivateTokenTitle => 'Activer le Jeton de Licence';

  @override
  String get spActivateTokenDesc =>
      'Collez le jeton complet envoyé par l\'administration. Le plan et le nombre d\'appareils sont extraits du jeton, pas de la mise en page de la carte.';

  @override
  String get spTokenHint => 'Collez le jeton d\'activation ici';

  @override
  String get spActivateTokenButton => 'Activer le Jeton';

  @override
  String get spErrorPasteKeyFirst =>
      'Collez d\'abord la clé de licence ou le jeton d\'activation';

  @override
  String get spActivateKeyTitle => 'Activer la Clé';

  @override
  String get spActivateKeyDesc =>
      'Collez la clé de licence reçue après le paiement, ou le jeton JWT si disponible. Les cartes ci-dessus servent uniquement à l\'affichage et à la comparaison.';

  @override
  String get spKeyHint => 'Collez la clé de licence ou le jeton d\'activation';

  @override
  String get spActivateKeyButton => 'Activer la Clé';

  @override
  String get spFree => 'Gratuit';

  @override
  String get sp15Days => '15 jours';

  @override
  String get spMonthly => 'Mensuel';

  @override
  String get spCurrentTrial => 'Votre essai actuel';

  @override
  String get spCurrentPlan => 'Votre plan actuel';

  @override
  String get spTrialAutoDescription =>
      'L\'essai démarre automatiquement — aucune clé nécessaire. Lors de la mise à niveau, recevez le jeton de l\'administration et collez-le dans le champ unifié sous les cartes.';

  @override
  String get spJwtCardDescription =>
      'Cette carte est uniquement pour l\'affichage et la comparaison. Après le paiement, collez le jeton d\'activation (JWT) dans le champ unifié sous les cartes.';

  @override
  String get spLegacyCardDescription =>
      'Cette carte est uniquement pour l\'affichage et la comparaison. Après le paiement, collez la clé de licence dans le champ unifié sous les cartes.';

  @override
  String get spMostPopular => 'Le Plus Populaire';

  @override
  String get spCopiedPhone => 'Numéro copié';

  @override
  String get spCopiedEmail => 'E-mail copié';

  @override
  String get spCopy => 'Copier';

  @override
  String get spTrialName => 'Essai Gratuit';

  @override
  String get spBasicName => 'Basique';

  @override
  String get spProName => 'Professionnel';

  @override
  String get spUnlimitedName => 'Illimité';

  @override
  String get spDevicesUnlimited => 'Appareils illimités';

  @override
  String spDevicesCount(Object count) {
    return '$count appareils';
  }

  @override
  String get spPlanPriceFree => 'Gratuit — 15 jours';

  @override
  String spPlanPriceMonthly(Object price) {
    return '$price Fdj / mois';
  }

  @override
  String get spTrialFeature1 =>
      '15 jours à partir de la première utilisation (ou de la première inscription au compte cloud)';

  @override
  String get spTrialFeature2 => '2 appareils sur le même compte';

  @override
  String get spTrialFeature3 =>
      'Ensuite choisissez un plan payant et activez la clé envoyée par l\'administration';

  @override
  String get spBasicFeature1 => '2 appareils sur le même compte';

  @override
  String get spBasicFeature2 =>
      'Toutes les fonctionnalités d\'inventaire et de facturation';

  @override
  String get spBasicFeature3 => 'Rapports et analyses';

  @override
  String get spBasicFeature4 => 'Support technique';

  @override
  String get spProFeature1 => '3 appareils sur le même compte';

  @override
  String get spProFeature2 => 'Toutes les fonctionnalités du plan Basique';

  @override
  String get spProFeature3 => 'Commandes d\'achat et gestion des fournisseurs';

  @override
  String get spProFeature4 => 'Rapports avancés';

  @override
  String get spProFeature5 => 'Support technique prioritaire';

  @override
  String get spUnlimitedFeature1 => 'Appareils illimités sur un seul compte';

  @override
  String get spUnlimitedFeature2 =>
      'Toutes les fonctionnalités du plan Professionnel';

  @override
  String get spUnlimitedFeature3 => 'Support multi-agences';

  @override
  String get spUnlimitedFeature4 => 'Support prioritaire absolu';

  @override
  String get devToolsOpen => 'Ouverture des outils de dev…';

  @override
  String get bulkImportTitle => 'Importer des Produits depuis CSV';

  @override
  String get bulkImportSubtitle =>
      'Importez rapidement vos produits depuis un fichier CSV';

  @override
  String get bulkImportTemplate => 'Télécharger le Modèle CSV';

  @override
  String get bulkImportTemplateDesc =>
      'Téléchargez un modèle pré-rempli, puis complétez-le avec vos données produit';

  @override
  String get bulkImportPickFile => 'Choisir un Fichier CSV';

  @override
  String get bulkImportPickFileDesc =>
      'Sélectionnez un fichier CSV depuis votre appareil';

  @override
  String get bulkImportPreview => 'Aperçu des Données';

  @override
  String get bulkImportStartImport => 'Lancer l\'Import';

  @override
  String get bulkImportImporting => 'Import en cours...';

  @override
  String get bulkImportSuccess => 'Produits importés avec succès';

  @override
  String bulkImportPartial(Object failed, Object success, Object total) {
    return 'Importé $success sur $total — $failed échoué(s)';
  }

  @override
  String get bulkImportFailed => 'Échec de l\'import';

  @override
  String get bulkImportNoFile => 'Aucun fichier sélectionné';

  @override
  String get bulkImportInvalidFormat => 'Format de fichier invalide';

  @override
  String get bulkImportColName => 'Nom du Produit';

  @override
  String get bulkImportColBarcode => 'Code-barres';

  @override
  String get bulkImportColBuyPrice => 'Prix d\'Achat';

  @override
  String get bulkImportColSellPrice => 'Prix de Vente';

  @override
  String get bulkImportColQty => 'Quantité';

  @override
  String get bulkImportColCategory => 'Catégorie';

  @override
  String get bulkImportColLowStock => 'Seuil Stock Bas';

  @override
  String get bulkImportColDescription => 'Description';

  @override
  String get bulkImportColSupplier => 'Fournisseur';

  @override
  String get bulkImportColTaxPercent => '% Taxe';

  @override
  String get bulkImportColSaleUnit => 'Unité de Vente';

  @override
  String bulkImportRowsFound(Object count) {
    return '$count lignes trouvées';
  }

  @override
  String bulkImportErrorsFound(Object count) {
    return '$count erreurs — corrigez-les avant l\'import';
  }

  @override
  String bulkImportRowError(Object error, Object row) {
    return 'Ligne $row : $error';
  }

  @override
  String get bulkImportRequiredField => 'Champ obligatoire';

  @override
  String get bulkImportInvalidNumber => 'Nombre invalide';

  @override
  String get bulkImportImportAll => 'Tout Importer';

  @override
  String get bulkImportCancel => 'Annuler';

  @override
  String get bulkImportColumnName => 'Colonne';

  @override
  String get bulkImportColumnSample => 'Exemple';

  @override
  String get bulkImportColumnStatus => 'Statut';

  @override
  String get bulkImportRequired => 'Obligatoire';

  @override
  String get bulkImportOptional => 'Optionnel';

  @override
  String get bulkImportBackToImport => 'Retour à l\'Import';

  @override
  String get bulkImportAddMore => 'Ajouter Plus';

  @override
  String get bulkImportSampleName => 'Chips Lays';

  @override
  String get bulkImportSampleBarcode => '6281100123456';

  @override
  String get bulkImportSampleBuy => '800';

  @override
  String get bulkImportSampleSell => '1000';

  @override
  String get bulkImportSampleQty => '50';

  @override
  String get bulkImportSampleCategory => 'Snacks';

  @override
  String get bulkImportSampleLowStock => '10';

  @override
  String get bulkImportSampleDesc => 'Chips de pommes de terre salées';

  @override
  String get bulkImportSampleSupplier => 'Société Al-Amal';

  @override
  String get bulkImportSampleTax => '0';

  @override
  String get bulkImportSampleUnit => 'Pièce';

  @override
  String get ipBulkImport => 'Import en masse de produits';

  @override
  String get syncNothingToSync => 'Aucune modification à synchroniser';

  @override
  String get syncCompletedPush => 'Données envoyées au cloud';

  @override
  String get syncCompletedPull => 'Données téléchargées du cloud';

  @override
  String get syncNotLoggedIn => 'Connectez-vous pour synchroniser';

  @override
  String get olTitle => 'Recherche de produit';

  @override
  String get olScanHint => 'Scannez le code-barres ou tapez le nom du produit';

  @override
  String get olSearching => 'Recherche…';

  @override
  String get olFoundInLocal => 'Trouvé dans la base de données locale';

  @override
  String get olNotFound => 'Produit non trouvé localement';

  @override
  String get olSearchingOnline => 'Recherche en ligne…';

  @override
  String get olOnlineFound => 'Trouvé dans l\'annuaire international';

  @override
  String get olOnlineNotFound =>
      'Produit non trouvé dans l\'annuaire international';

  @override
  String get olUseThisProduct => 'Utiliser ce produit';

  @override
  String get olNoResults => 'Aucun résultat';

  @override
  String get olProductImage => 'Image du produit';

  @override
  String get olBrand => 'Marque';

  @override
  String get olCategory => 'Catégorie';

  @override
  String get olQuantity => 'Quantité';

  @override
  String get olAddToProducts => 'Ajouter aux produits';

  @override
  String get olAutoFilled =>
      'Champs remplis automatiquement depuis l\'annuaire international';

  @override
  String get signupAcceptTermsFirst =>
      'Vous devez accepter les conditions générales d\'abord';

  @override
  String get signupAccountCreated =>
      'Compte créé avec succès ! Veuillez vous connecter.';

  @override
  String get signupGoogleSoon => 'Google Sign-In sera bientôt disponible';

  @override
  String get signupBrandSubtitle => 'Système de gestion d\'entreprise';

  @override
  String get signupGetStarted => 'COMMENCER';

  @override
  String get signupCreateAccount => 'Créer un nouveau compte';

  @override
  String get signupFullNameLabel => 'Nom commercial / Nom complet';

  @override
  String get signupFullNameHint => 'ex: Société de commerce de Bassora';

  @override
  String get signupNameRequired => 'Le nom est requis';

  @override
  String get signupNameMinLength => 'Doit comporter au moins 3 caractères';

  @override
  String get signupEmailLabel => 'E-mail';

  @override
  String get signupEmailRequired => 'L\'e-mail est requis';

  @override
  String get signupEmailInvalid => 'Format d\'e-mail invalide';

  @override
  String get signupPhoneLabel => 'Numéro de téléphone';

  @override
  String get signupPhoneHintIraq => '07701234567';

  @override
  String get signupPhoneHintOther => 'Entrez le numéro';

  @override
  String get signupPhoneRequired => 'Le numéro de téléphone est requis';

  @override
  String get signupPhoneIraqInvalid =>
      'Numéro irakien : 11 chiffres commençant par 07';

  @override
  String get signupPhoneInvalid => 'Numéro invalide';

  @override
  String get signupPasswordLabel => 'Mot de passe';

  @override
  String get signupPasswordHint => '8 caractères minimum';

  @override
  String get signupPasswordRequired => 'Le mot de passe est requis';

  @override
  String get signupPasswordMinLength => 'Au moins 8 caractères';

  @override
  String get signupConfirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get signupConfirmPasswordHint => 'Ressaisissez le mot de passe';

  @override
  String get signupConfirmPasswordRequired =>
      'La confirmation du mot de passe est requise';

  @override
  String get signupPasswordsMismatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get signupCaptchaTitle =>
      'Vérification d\'identité — Répondez à la question simple';

  @override
  String get signupCaptchaChange => 'Changer';

  @override
  String get signupCaptchaHint => 'Réponse';

  @override
  String get signupCaptchaAnswerRequired => 'Entrez la réponse';

  @override
  String get signupCaptchaWrong => 'Réponse incorrecte';

  @override
  String get signupCreateButton => 'CRÉER LE COMPTE';

  @override
  String get signupHasAccount => 'Vous avez déjà un compte ?';

  @override
  String get signupLoginLink => 'Se connecter';

  @override
  String get signupGoogleButton => 'S\'inscrire avec Google';

  @override
  String get signupOrDivider => 'Ou inscrivez-vous avec vos informations';

  @override
  String get signupTermsPrefix => 'J\'accepte ';

  @override
  String get signupTermsOfUse => 'Conditions d\'utilisation';

  @override
  String get signupAnd => ' et ';

  @override
  String get signupPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get signupTermsSuffix => ' de Maarey.';

  @override
  String get licEnterKey => 'Entrez la clé de licence';

  @override
  String get licStoreSystem => 'Système de gestion de magasin';

  @override
  String get licActivation => 'Activation de la licence';

  @override
  String get licEnterKeyToContinue =>
      'Entrez votre clé de licence pour continuer';

  @override
  String get licKeyHint => 'MAAREY-XXXX-XXXX-XXXX ou JWT';

  @override
  String get licActivate => 'Activer';

  @override
  String get licContactSupport =>
      'Pour obtenir une clé de licence, contactez l\'équipe Maarey.';

  @override
  String get licAllRightsReserved => 'Maarey v2.0 — Tous droits réservés';

  @override
  String get licTimeConflict => 'Conflit de paramètres horaires';

  @override
  String get licSuspended => 'Licence suspendue';

  @override
  String get licDeviceLimitExceeded => 'Limite d\'appareils dépassée';

  @override
  String get licExpired => 'Abonnement expiré';

  @override
  String get licTimeConflictMsg =>
      'Conflit de paramètres horaires détecté. Contactez le support pour une re-vérification.';

  @override
  String get licAccountSuspended =>
      'Votre compte a été suspendu. Contactez le support technique.';

  @override
  String get licSubscriptionEnded =>
      'Votre abonnement a expiré. Renouvelez pour continuer.';

  @override
  String get licCurrentPlan => 'Forfait actuel';

  @override
  String get licRegisteredDevices => 'Appareils enregistrés';

  @override
  String get licSubscriptionExpiry => 'Expiration de l\'abonnement';

  @override
  String get licTrialExpiry => 'Expiration de l\'essai';

  @override
  String get licUpgradePlan => 'Upgrade du forfait pour ajouter des appareils';

  @override
  String get licRenewSubscription => 'Renouveler l\'abonnement';

  @override
  String get licComparePlans => 'Comparer les forfaits d\'abonnement';

  @override
  String get licEnterNewKey => 'Entrer une nouvelle clé';

  @override
  String get licVerifyAgain => 'Vérifier à nouveau';

  @override
  String get licUseAnotherKey => 'Utiliser une autre clé';

  @override
  String get cashInvoicesSales => 'Factures et ventes (écritures liées)';

  @override
  String get cashManualDeposit => 'Dépôt manuel';

  @override
  String get cashManualWithdrawal => 'Retrait manuel';

  @override
  String get cashOtherMovements => 'Autres mouvements';

  @override
  String get cashLinkedInvoice => 'Facture #';

  @override
  String get cashInflow => 'Entrée';

  @override
  String get cashOutflow => 'Sortie';

  @override
  String get cashNoLinkedEntries =>
      'Aucune écriture liée à une facture dans ce groupe.';

  @override
  String get cashInvoiceIdsShown => 'Numéros de factures affichés :';

  @override
  String get cashShiftDetails => 'Détails du quart #';

  @override
  String get cashShiftEmployee => 'Employé du quart (carte)';

  @override
  String get cashSummaryTitle => 'Résumé de la caisse';

  @override
  String get cashTotalIn => 'Total entrées';

  @override
  String get cashTotalOut => 'Total sorties';

  @override
  String get cashNetFlow => 'Flux net';

  @override
  String get cashBalanceLabel => 'Solde';

  @override
  String get cashDetailsTitle => 'Détails de la caisse';

  @override
  String get cashFilterAll => 'Tout';

  @override
  String get cashDateRange => 'Période';

  @override
  String get cashFrom => 'Du';

  @override
  String get cashTo => 'Au';

  @override
  String get cashAmount => 'Montant';

  @override
  String get cashDescription => 'Description';

  @override
  String get cashType => 'Type';

  @override
  String get cashDate => 'Date';

  @override
  String get cashReceipt => 'Reçu';

  @override
  String get cashPayment => 'Paiement';

  @override
  String get cashDeposit => 'Dépôt';

  @override
  String get cashWithdrawal => 'Retrait';

  @override
  String get cashTransfer => 'Transfert';

  @override
  String get cashRefund => 'Remboursement';

  @override
  String get cashOpenShift => 'Ouvrir un quart';

  @override
  String get cashCloseShift => 'Fermer un quart';

  @override
  String get cashShiftHistory => 'Historique des quarts';

  @override
  String get cashTransactions => 'Transactions';

  @override
  String get cashNoTransactions => 'Aucune transaction trouvée';

  @override
  String get cashPeriod => 'Période';

  @override
  String get cashInvoiceNum => 'Facture #';

  @override
  String get cashEmployee => 'Employé';

  @override
  String get cashNote => 'Note';

  @override
  String get cashReceiptNum => 'Reçu #';

  @override
  String get cashCustomer => 'Client';

  @override
  String get debtsTitle => 'Créances — À crédit';

  @override
  String get debtsTabInvoices => 'Factures';

  @override
  String get debtsTabCustomers => 'Clients';

  @override
  String get debtsTabSuppliers => 'Fournisseurs';

  @override
  String get debtsSettingsTooltip => 'Paramètres de dette';

  @override
  String get debtsRefreshTooltip => 'Actualiser (F5)';

  @override
  String get debtsShowingOf => 'Affichage :';

  @override
  String get debtsSearchHint => 'Recherche : client, numéro de facture…';

  @override
  String get debtsClearSearch => 'Effacer la recherche';

  @override
  String get debtsAll => 'Tout';

  @override
  String get debtsPending => 'En attente';

  @override
  String get debtsOverdue => 'En retard';

  @override
  String get debtsPaid => 'Payé';

  @override
  String get debtsPartial => 'Partiel';

  @override
  String get debtsAmount => 'Montant';

  @override
  String get debtsPaidAmount => 'Payé';

  @override
  String get debtsRemaining => 'Restant';

  @override
  String get debtsCustomer => 'Client';

  @override
  String get debtsInvoiceNum => 'Facture #';

  @override
  String get debtsDate => 'Date';

  @override
  String get debtsDueDate => 'Date d\'échéance';

  @override
  String get debtsActions => 'Actions';

  @override
  String get debtsPay => 'Payer';

  @override
  String get debtsDetails => 'Détails';

  @override
  String get debtsRecordPayment => 'Enregistrer le paiement';

  @override
  String get debtsNoInvoices => 'Aucune facture trouvée';

  @override
  String get debtsTotalDebt => 'Total dette';

  @override
  String get debtsPaidTotal => 'Total payé';

  @override
  String get debtsOutstanding => 'Montant dû';

  @override
  String get cdInvalidData => 'Données invalides';

  @override
  String get cdRecordPayment => 'Enregistrer le paiement';

  @override
  String get cdRemainingCurrent => 'Restant actuel';

  @override
  String get cdAmountLabel => 'Montant (FDJ)';

  @override
  String get cdAutoDistribute =>
      'Réparti automatiquement des factures les plus anciennes aux plus récentes.';

  @override
  String get cdCancel => 'Annuler';

  @override
  String get cdConfirm => 'Confirmer';

  @override
  String get cdEnterValidAmount => 'Entrez un montant valide';

  @override
  String get cdNoRemaining => 'Rien à payer ou montant invalide';

  @override
  String get cdPaymentSuccess => 'Paiement enregistré avec succès';

  @override
  String get cdPaymentFailed => 'Échec du paiement';

  @override
  String get cdInvoiceHistory => 'Historique des factures';

  @override
  String get cdPaymentHistory => 'Historique des paiements';

  @override
  String get cdNoPayments => 'Aucun paiement enregistré';

  @override
  String get cdFullPayment => 'Paiement complet';

  @override
  String get cdPartialPayment => 'Paiement partiel';

  @override
  String get cdRemainingBalance => 'Solde restant';

  @override
  String get cdDebtBefore => 'Dette avant';

  @override
  String get cdDebtAfter => 'Dette après';

  @override
  String get cdNoInvoiceLinked => 'Aucune facture liée';

  @override
  String get cdCustomerLabel => 'Client';

  @override
  String get cdInvoiceLabel => 'Facture';

  @override
  String get cdClose => 'Fermer';

  @override
  String get cdViewInvoice => 'Voir la facture';

  @override
  String get cdAmountPaid => 'Montant payé';

  @override
  String get dsTitle => 'Paramètres de dette';

  @override
  String get dsReloadTooltip => 'Recharger depuis la base';

  @override
  String get dsApplyInfo =>
      'Ces limites s\'appliquent lors de la sauvegarde d\'une facture à crédit. Laissez vide ou 0 pour désactiver.';

  @override
  String get dsAmountCeilings => 'Plafonds de montants';

  @override
  String get dsMaxPerCustomer => 'Max restant par client (FDJ)';

  @override
  String get dsMaxPerInvoice => 'Max restant par facture à crédit (FDJ)';

  @override
  String get dsWarningDays => 'Jours d\'avertissement';

  @override
  String get dsSaved => 'Paramètres de dette sauvegardés';

  @override
  String get dsInvalidDays => 'Jours d\'avertissement : entre 0 et 36500';

  @override
  String get dsEnableLimits => 'Activer les limites de dette';

  @override
  String get dsMaxDebtPerCustomer => 'Max restant par client (FDJ)';

  @override
  String get dsMaxDebtPerInvoice => 'Max restant par facture à crédit (FDJ)';

  @override
  String get dsAutoEnforce => 'Application automatique des limites';

  @override
  String get dsAutoEnforceHint =>
      'Empêcher la sauvegarde si les limites sont dépassées';

  @override
  String get dsReminderDays => 'Jours de rappel';

  @override
  String get dsReminderHint =>
      'Jours avant l\'échéance pour afficher le rappel';

  @override
  String get dsOverdueThreshold => 'Seuil de retard (jours)';

  @override
  String get dsOverdueHint => 'Jours après échéance pour marquer en retard';

  @override
  String get cashInvoiceNumShort => 'Facture #';

  @override
  String get cashShiftLoadError =>
      'Échec du chargement de l\'historique du quart ; ci-dessous uniquement la vue de la caisse.';

  @override
  String get cashTotalMovements =>
      'Total des mouvements affichés en caisse pour ce groupe';

  @override
  String get cashMovementsCount => 'mouvements.';

  @override
  String get cashMovementStats => 'Nombre de mouvements';

  @override
  String get cashMovementsDeposit => 'Dépôt';

  @override
  String get cashMovementsWithdrawal => 'Retrait';

  @override
  String get cashMovementsManual => 'Manuel';

  @override
  String get cashMovementsLinked => 'Liées à une facture';

  @override
  String get cashMovementsTimes => 'fois';

  @override
  String get cashSalesCash => 'Vente au comptant';

  @override
  String get cashFirstPayment => 'Acompte / Premier versement';

  @override
  String get cashInstallmentPayment => 'Paiement de tranche';

  @override
  String get cashSupplierPayment => 'Paiement fournisseur';

  @override
  String get cashSupplierPaymentReversal => 'Annulation paiement fournisseur';

  @override
  String get cashReturn => 'Retour';

  @override
  String get cashMovement => 'Mouvement';

  @override
  String get cashSummaryInflow => 'Entrée';

  @override
  String get cashSummaryOutflow => 'Sortie';

  @override
  String get cashNoShift => 'Sans quart';

  @override
  String get cashTapDetails => 'Appuyez pour les détails';

  @override
  String get cashShiftLabel => 'Quart ';

  @override
  String get cashMovementsShort => ' mouvements';

  @override
  String get cashEmployeeLabel => 'Employé : ';

  @override
  String get cashTapInvoice => 'Appuyez pour la facture #';

  @override
  String get cashCashboxInfo =>
      'Enregistré séparément des factures de vente et tranches. Utilisé pour les dépenses du magasin ou dépôt/retrait bancaire.';

  @override
  String get cashCashboxBalanceInfo =>
      'Total des entrées en caisse des ventes au comptant, acomptes, paiements de tranches et dépôts manuels — hors factures à crédit sans acompte.';

  @override
  String get calculatorTitle => 'Calculatrice';

  @override
  String get calculatorCopyResult => 'Copier le résultat';

  @override
  String get calculatorClearAll => 'Tout effacer';

  @override
  String get debtsGroupByCustomer =>
      'Regroupement par client : produits, vendeurs et paiement partiel depuis l\'écran détails. QR sur reçu pour les clients enregistrés uniquement.';

  @override
  String get debtsSearchHintCustomer => 'Recherche par nom ou ID client…';

  @override
  String get debtsXofYCustomers => 'sur';

  @override
  String get debtsNoCreditRemaining =>
      'Aucun crédit restant regroupé par clients';

  @override
  String get debtsNoResults => 'Aucun résultat';

  @override
  String get debtsCustomerLabel => 'Client';

  @override
  String get debtsRegisteredCustomer => 'Client enregistré';

  @override
  String get debtsNotLinked => 'Non lié au tableau des clients (par nom)';

  @override
  String get debtsCreditInvoices => 'factures à crédit';

  @override
  String get debtsRemainingLabel => 'Restant';

  @override
  String get debtsCustomerStatement => 'Relevé client';

  @override
  String get debtsAgingWarningInfo =>
      'L\'avertissement commence après X jours.';

  @override
  String get debtsAgingDisabled =>
      'Activez les jours d\'avertissement pour marquer les factures anciennes.';

  @override
  String get debtsInfoBanner =>
      'Les créances sont calculées depuis les factures à crédit.';

  @override
  String get debtsTotalRemaining => 'Total restant';

  @override
  String get debtsShowAll => 'Afficher toutes les factures';

  @override
  String get debtsOpenInvoices => 'Factures ouvertes';

  @override
  String get debtsFilterOpen => 'Filtrer : ouvertes seulement';

  @override
  String get debtsAgingWarning => 'Alerte d\'ancienneté';

  @override
  String get debtsFilterAging => 'Filtrer : alerte';

  @override
  String get debtsStatusClosed => 'Fermé';

  @override
  String get debtsStatusAging => 'Alerte';

  @override
  String get debtsStatusOpen => 'Ouvert';

  @override
  String get debtsReceiptLabel => 'Reçu';

  @override
  String get debtsViewDetails => 'Détails';

  @override
  String get debtsDaysSinceInvoice => 'jours';

  @override
  String get debtsAdvanceOf => 'Acompte';

  @override
  String get debtsTapForDetails => 'Appuyez pour voir les détails';

  @override
  String get debtsNoInvoicesInFilter =>
      'Aucune facture dans la recherche actuelle';

  @override
  String get debtsNoDebtInvoices => 'Aucune facture de dette enregistrée';

  @override
  String get debtsClearSearchHint =>
      'Effacez la recherche ou sélectionnez « Tout ».';

  @override
  String get debtsNewSaleHint =>
      'Depuis « Nouvelle vente », choisissez « Crédit » pour afficher le montant ici.';

  @override
  String get hubInventoryTitle => 'Centre de stock';

  @override
  String get hubProductsList => 'Liste des produits';

  @override
  String get hubProductsListDesc =>
      'Rechercher, filtrer et gérer tous les articles';

  @override
  String get hubAddProduct => 'Ajouter un produit';

  @override
  String get hubAddProductDesc => 'Créer un nouvel article en stock';

  @override
  String get hubQuickUpdate => 'Mettre à jour un produit';

  @override
  String get hubQuickUpdateDesc =>
      'Rechercher, code-barres, modifier prix et quantités sans créer de nouvel article';

  @override
  String get hubVouchers => 'Mouvements de stock';

  @override
  String get hubVouchersDesc => 'Entrées, sorties, transferts entre entrepôts';

  @override
  String get hubWarehouses => 'Gestion des entrepôts';

  @override
  String get hubWarehousesDesc =>
      'Ajouter et modifier les entrepôts et emplacements';

  @override
  String get hubPriceLists => 'Listes de prix';

  @override
  String get hubPriceListsDesc => 'Prix personnalisés pour clients et groupes';

  @override
  String get hubStocktaking => 'Inventaire périodique';

  @override
  String get hubStocktakingDesc =>
      'Concilier le stock physique avec le système';

  @override
  String get hubPurchaseOrders => 'Bons de commande';

  @override
  String get hubPurchaseOrdersDesc =>
      'Créer et suivre les commandes fournisseurs';

  @override
  String get hubAnalytics => 'Analyses de stock';

  @override
  String get hubAnalyticsDesc => 'Valeur du stock, alertes, plus populaires';

  @override
  String get hubSettings => 'Paramètres de stock';

  @override
  String get hubSettingsDesc =>
      'Type d\'activité, caractéristiques produit, activer les fonctionnalités';

  @override
  String get hubTenantSelect => 'Sélectionner le compte/locataire';

  @override
  String get hubTenantClose => 'Fermer';

  @override
  String get hubCustomizeUnits => 'Personnaliser les unités de stock';

  @override
  String get hubCustomizeUnitsDesc =>
      'Masquer toute unité dont vous n\'avez pas besoin. Vous pourrez la restaurer plus tard au même endroit';

  @override
  String get hubCancel => 'Annuler';

  @override
  String get hubSave => 'Enregistrer';

  @override
  String get hubRefresh => 'Actualiser';

  @override
  String get hubCustomize => 'Personnaliser les unités';

  @override
  String get hubSwitchTenant => 'Changer de locataire';

  @override
  String get hubAllHidden =>
      'Toutes les unités sont masquées ou désactivées depuis les paramètres';

  @override
  String get hubManageUnits => 'Gérer les unités';

  @override
  String get hubReloadOnReturn =>
      'Recharger au retour (les paramètres peuvent avoir changé)';

  @override
  String get bsTitle => 'Paramètres du code-barres';

  @override
  String get bsSubtitle =>
      'Configurer les formats de code-barres, les codes-barres avec poids intégré et les paramètres de tarification';

  @override
  String get bsTypeTitle => 'Type de code-barres';

  @override
  String get bsTypeCode128Desc =>
      'Code-barres flexible supportant les lettres, chiffres et symboles. Utilisé largement dans la logistique et l\'entreposage';

  @override
  String get bsTypeEan13Desc =>
      'Standard composé de 13 chiffres couramment utilisé dans la grande distribution. Inclut le code pays, le code fabricant et le code produit';

  @override
  String get bsTypeLabel =>
      'Choisir le standard de code-barres que le système utilisera pour créer et lire les codes-barres produits';

  @override
  String get bsWeightEmbedded => 'Code-barres avec poids intégré';

  @override
  String get bsWeightEnabled => 'Activé';

  @override
  String get bsWeightDisabled => 'Désactivé';

  @override
  String get bsWeightDesc =>
      'Utiliser le code-barres avec poids intégré pour que le système puisse lire le poids et le prix directement du code-barres';

  @override
  String get bsWeightFormat => 'Format du code-barres avec poids intégré';

  @override
  String get bsWeightFormatDesc =>
      'Saisir le format du code-barres selon le modèle, où les chiffres représentent le produit, les chiffres de poids et les chiffres de prix';

  @override
  String get bsWeightExample =>
      'Par exemple, si le poids est affiché en 4 chiffres il apparaîtra en grammes, et en 5 chiffres en dizaines de grammes';

  @override
  String get bsWeightUnit => 'Division de l\'unité de poids';

  @override
  String get bsWeightUnitExample => 'Exemple';

  @override
  String get bsWeightUnitDesc =>
      'Saisir la valeur utilisée par le système pour convertir l\'unité de poids dans le code-barres en votre unité de vente';

  @override
  String get bsCurrencyDivision => 'Division de la devise';

  @override
  String get bsCurrencyExample => 'Exemple';

  @override
  String get bsCurrencyDesc =>
      'Saisir la valeur utilisée par le système pour convertir le prix de l\'unité intégrée dans le code-barres vers votre devise de base';

  @override
  String get bsFormatLabel => 'Format du code-barres intégré';

  @override
  String get bsFormatError =>
      'Le format du code-barres intégré ne doit contenir que les lettres W, P et D';

  @override
  String get bsWeightUnitError =>
      'Saisir une valeur positive valide pour diviser l\'unité de poids';

  @override
  String get bsCurrencyDivError =>
      'Saisir une valeur positive valide pour diviser la devise';

  @override
  String get bsSaveSuccess => 'Paramètres du code-barres enregistrés';

  @override
  String get bsSaveError => 'Échec de l\'enregistrement';

  @override
  String get imTabAll => 'Tout';

  @override
  String get imTabDeposit => 'Dépôt';

  @override
  String get imTabWithdrawal => 'Retrait';

  @override
  String get imTabTransfer => 'Transfert';

  @override
  String get imSortNewest => 'Plus récent';

  @override
  String get imSortOldest => 'Plus ancien';

  @override
  String get imLoadError => 'Échec du chargement des mouvements';

  @override
  String get stOpenSessions => 'Sessions ouvertes';

  @override
  String get stCompleted => 'Terminé';

  @override
  String get stCloseSessionConfirm => 'Voulez-vous fermer cette session ?';

  @override
  String get stCategory => 'Catégorie';

  @override
  String get stStarted => 'Commencé';

  @override
  String get stClosed => 'Fermé';

  @override
  String get stSystemQty => 'Système';

  @override
  String get stDifference => 'Écart';

  @override
  String get stReport => 'Rapport';

  @override
  String get stActualQty => 'Réel';

  @override
  String get plRetail => 'Liste de détail';

  @override
  String get plRetailDesc => 'Prix de détail pour les clients ordinaires';

  @override
  String get plWholesale => 'Liste de gros';

  @override
  String get plWholesaleDesc =>
      'Prix de gros pour les distributeurs et commerçants';

  @override
  String get plVIP => 'Liste clients VIP';

  @override
  String get plVIPDesc => 'Prix spéciaux pour les clients fidèles';

  @override
  String get plDeleteConfirm => 'Voulez-vous supprimer';

  @override
  String get plCategory => 'Catégorie';

  @override
  String get plPrices => 'Prix';

  @override
  String get plSellPrice => 'Prix de vente';

  @override
  String get rptDashboard => 'Tableau de bord';

  @override
  String get rptDashboardSub => 'KPIs et période';

  @override
  String get rptSalesInvoices => 'Ventes et factures';

  @override
  String get rptSalesInvoicesSub => 'Modes de paiement et retours';

  @override
  String get rptCustomers => 'Clients';

  @override
  String get rptCustomersSub => 'Meilleurs acheteurs';

  @override
  String get rptDebts => 'Dettes';

  @override
  String get rptDebtsSub => 'Soldes clients';

  @override
  String get rptInstallments => 'Acomptes';

  @override
  String get rptInstallmentsSub => 'Plans de la période';

  @override
  String get rptStaff => 'Personnel';

  @override
  String get rptStaffSub => 'Performance d\'enregistrement';

  @override
  String get rptAnalyticsMargin => 'Analyse et marge';

  @override
  String get rptAnalyticsMarginSub => 'Produits et marge estimée';

  @override
  String get rptReportSettings => 'Paramètres des rapports';

  @override
  String get rptReportSettingsSub => 'Période par défaut et préférences';

  @override
  String get rptNoData => 'Aucune donnée';

  @override
  String get rptDateFilter => 'Filtre de date';

  @override
  String get rptToday => 'Aujourd\'hui';

  @override
  String get rptYesterday => 'Hier';

  @override
  String get rptLastWeek => 'Semaine dernière';

  @override
  String get rptLastMonth => 'Mois dernier';

  @override
  String get rptLastQuarter => 'Dernier trimestre';

  @override
  String get rptReset => 'Réinitialiser';

  @override
  String get rptApply => 'Appliquer';

  @override
  String get rptClose => 'Fermer';

  @override
  String get rptCopiedSectionName => 'Nom de la section copié';

  @override
  String get rptSales => 'Ventes';

  @override
  String get rptTotal => 'Total';

  @override
  String get rptReturns => 'Retours';

  @override
  String get rptCustomer => 'Client';

  @override
  String get rptStaffLabel => 'Personnel';

  @override
  String get rptOthers => 'Autres';

  @override
  String get rptNoCustomerData => 'Aucune donnée client pour cette période';

  @override
  String get rptNoStaffSales =>
      'Aucune vente enregistrée par le personnel pour cette période';

  @override
  String get rptTopBuyers => 'Meilleurs acheteurs par nom de facture';

  @override
  String get rptSalesByCustomer => 'Répartition des ventes par clients';

  @override
  String get rptSalesByStaff => 'Répartition des ventes par personnel';

  @override
  String get rptDebtsBalances =>
      'Soldes enregistrés dans le grand livre clients';

  @override
  String get rptInstallmentPlans =>
      'Plans d\'acomptes liés aux factures de la période';

  @override
  String get rptDetails => 'Détails des plans';

  @override
  String get rptStaffPercentage =>
      'Pourcentage de chaque membre du personnel du total des ventes';

  @override
  String get rptConsistentWithPie =>
      'Cohérent avec les pourcentages du graphique circulaire et du tableau';

  @override
  String get rptUnknown => 'Inconnu';

  @override
  String get rptNoName => 'Sans nom';

  @override
  String get rptSelectedPeriod => 'Période sélectionnée';

  @override
  String get rptApproxNet => 'Net approximatif';

  @override
  String get rptTotalExpenses => 'Total des dépenses';

  @override
  String get rptNetAfterExpenses => 'Net après dépenses';

  @override
  String get rptInvoicesReturns => 'Factures et retours';

  @override
  String get rptDailySalesInRange =>
      'Tendance des ventes quotidiennes dans la période';

  @override
  String get rptPiePayments => 'Répartition des modes de paiement';

  @override
  String get osDescription =>
      'Après connexion, afficher le solde de la caisse, l\'inventaire, ajouter de l\'argent, puis identifier l\'employé du quart';

  @override
  String get osSessionExpired =>
      'Session terminée en arrière-plan pendant le chargement de l\'écran';

  @override
  String get osUnexpectedError => 'Erreur inattendue lors de l\'initialisation';

  @override
  String get osPasswordRequired =>
      'En revenant à l\'application avec un quart ouvert, nous demandons le mot de passe de l\'employé';

  @override
  String get osShiftEmployee => 'Employé du quart';

  @override
  String get osOpeningBalance => 'Solde d\'ouverture (Système)';

  @override
  String get osManualCount => 'Comptage manuel de la caisse';

  @override
  String get osAddedMoney => 'Argent ajouté à l\'ouverture';

  @override
  String get osOpeningShift => 'Ouvrir le quart';

  @override
  String get osErrorOpening => 'Échec de l\'ouverture du quart';

  @override
  String get osNoShiftId =>
      'Opération terminée sans ID de quart valide, réessayez';

  @override
  String get osShiftOpened => 'Quart ouvert avec succès';

  @override
  String get osAmountHint => 'Montant affiché lors de l\'inventaire';

  @override
  String get osAmountLabel =>
      'Saisissez le montant réel dans la caisse maintenant';

  @override
  String get osExample => 'Exemple';

  @override
  String get osAddMoney => 'Ajouter de l\'argent à la caisse';

  @override
  String get osAddMoneyDesc =>
      'Optionnel - utilisez si vous ajoutez du cash avant de commencer les ventes';

  @override
  String get osLogout => 'Quitter le compte';

  @override
  String get osReviewBalance =>
      'Vérifiez le solde de la caisse système, puis enregistrez le comptage réel avant de commencer';

  @override
  String get osOpeningSystemBalance => 'Solde de la caisse selon le système';

  @override
  String get osOpeningLoading => 'Ouverture du quart en cours...';

  @override
  String get osStaffDialogTitle => 'Dialogue employé du quart';

  @override
  String get osStaffDialogDesc =>
      'Sélectionner un utilisateur enregistré par code carte ou scanner';

  @override
  String get osAllActiveUsers => 'Tous les utilisateurs actifs';

  @override
  String get osErrorLoadingUsers =>
      'Échec du chargement des utilisateurs du quart';

  @override
  String get osInvalidCard =>
      'Le texte lu n\'est pas un code d\'identité valide';

  @override
  String get osSelectUser =>
      'Sélectionnez l\'utilisateur du quart dans la liste ou scannez la carte';

  @override
  String get osUserNotFound =>
      'Utilisateur non trouvé, sélectionnez un autre utilisateur';

  @override
  String get osNoLocalPassword =>
      'Aucun mot de passe local pour ce compte, définissez un mot de passe depuis la gestion des utilisateurs';

  @override
  String get osWrongPassword => 'Mot de passe de connexion incorrect';

  @override
  String get osSelectEmployee =>
      'Sélectionnez l\'employé responsable de la caisse pour ce quart';

  @override
  String get osNoActiveUsers =>
      'Aucun utilisateur actif dans le système, ajoutez un utilisateur depuis la gestion';

  @override
  String get osUserLabel => 'Utilisateur du quart';

  @override
  String get osSelectUserHint => 'Sélectionner un utilisateur';

  @override
  String get osDisplayName => 'Nom affiché';

  @override
  String get osAutoDetermined => 'Déterminé automatiquement';

  @override
  String get osScanDesc =>
      'Sélectionner l\'utilisateur par caméra ou lecteur externe, puis saisir le mot de passe pour confirmer';

  @override
  String get osScanCamera => 'Scanner avec la caméra';

  @override
  String get osExternalReader => 'Lecteur externe';

  @override
  String get osPressToScan => 'Appuyez ici puis scannez la carte';

  @override
  String get osInvalidIdCode =>
      'Le texte lu n\'est pas un code d\'identité valide';

  @override
  String get osLoginPassword => 'Mot de passe de connexion';

  @override
  String get osSessionEnded => 'Session utilisateur terminée, reconnectez-vous';

  @override
  String get osCannotBeNegative => 'Le montant ajouté ne peut pas être négatif';

  @override
  String osErrorStaffDialog(Object error) {
    return 'Échec de l\'ouverture de la sélection du personnel : $error';
  }

  @override
  String get osNoStaffSelected => 'Aucun employé du quart sélectionné';

  @override
  String get osIncompleteData =>
      'Données incomplètes, sélectionnez l\'employé à nouveau';

  @override
  String get osPasswordNotStored =>
      'Nous ne stockons pas les mots de passe, la vérification était dans le dialogue uniquement';

  @override
  String get osAutoFixed =>
      'Données de l\'employé corrigées automatiquement sur cet appareil, vous pouvez continuer';

  @override
  String get osStaffMissing =>
      'L\'employé enregistré n\'existe plus, fermez le quart depuis un autre appareil ou contactez l\'admin';

  @override
  String get osAuthRejected =>
      'Authentification rejetée, l\'application ne doit pas s\'ouvrir sur un quart sans preuve';

  @override
  String get osReturningToLogin =>
      'Déconnexion de cette session et retour à l\'écran de connexion';

  @override
  String get osUseExistingShift => 'Revenir au quart existant au lieu de cela';

  @override
  String get sdRecordSupplierReceipt => 'Enregistrer le reçu fournisseur';

  @override
  String get sdRecordSupplierReceiptSubtitle =>
      'Leur numéro de reçu + date + montant + photo optionnelle';

  @override
  String get sdSupplierPayment => 'Paiement fournisseur';

  @override
  String get sdSupplierPaymentSubtitle => 'Optionnel : déduire de la caisse';

  @override
  String get sdSupplierReturn => 'Retour fournisseur (réduit la dette)';

  @override
  String get sdSupplierReturnSubtitle => 'Enregistre le mouvement sans caisse';

  @override
  String get sdSupplierReceiptTitle => 'Reçu fournisseur';

  @override
  String get sdTheirReceiptNo => 'Leur numéro de reçu / facture';

  @override
  String get sdTheirReceiptDate => 'Leur date de reçu';

  @override
  String sdTheirReceiptDateWith(Object date) {
    return 'Leur date de reçu : $date';
  }

  @override
  String get sdAmountFdj => 'Montant (Fdj)';

  @override
  String get sdInternalNote => 'Note interne';

  @override
  String get sdPhoto => 'Photo';

  @override
  String get sdGallery => 'Galerie';

  @override
  String sdPhotoSelected(Object name) {
    return 'Photo : $name';
  }

  @override
  String get sdCancel => 'Annuler';

  @override
  String get sdSave => 'Enregistrer';

  @override
  String get sdEnterValidAmount => 'Entrez un montant valide';

  @override
  String sdSaveFailed(Object error) {
    return 'Échec de l\'enregistrement : $error';
  }

  @override
  String get sdReceiptRecorded => 'Reçu fournisseur enregistré';

  @override
  String get sdRecordDiscountFromCash =>
      'Enregistrer la déduction de la caisse';

  @override
  String get sdDisableCashHint =>
      'Désactivez si payé depuis un compte bancaire ou hors système';

  @override
  String get sdConfirm => 'Confirmer';

  @override
  String get sdPaymentRecordedCash =>
      'Paiement enregistré et caisse mise à jour';

  @override
  String get sdPaymentRecordedNoCash => 'Paiement enregistré (sans caisse)';

  @override
  String get sdRecordFailed => 'Échec de l\'enregistrement';

  @override
  String get sdReturnTitle => 'Retour fournisseur';

  @override
  String get sdNote => 'Note';

  @override
  String get sdReturnCashHint =>
      'Ce retour sera enregistré uniquement dans la dette fournisseur, sans mouvement de caisse.';

  @override
  String get sdRegister => 'Enregistrer';

  @override
  String get sdReturnDefaultNote => 'Retour fournisseur (sans caisse)';

  @override
  String get sdReturnFailed => 'Échec de l\'enregistrement du retour';

  @override
  String get sdReturnRecorded => 'Retour fournisseur enregistré';

  @override
  String get sdReversePayment => 'Annuler le paiement ?';

  @override
  String sdReverseCashDesc(Object amount) {
    return 'L\'enregistrement du paiement sera supprimé et un dépôt en caisse de $amount Fdj sera enregistré';
  }

  @override
  String get sdReverseNoCashDesc =>
      'Seul l\'enregistrement du paiement sera supprimé (n\'était pas lié à la caisse).';

  @override
  String get sdConfirmReverse => 'Confirmer l\'annulation';

  @override
  String get sdReverseFailed => 'Échec de l\'annulation';

  @override
  String get sdReversed => 'Paiement annulé';

  @override
  String get sdNoActiveWarehouse =>
      'Aucun entrepôt actif — ajoutez-en un depuis les paramètres';

  @override
  String get sdTargetWarehouse => 'Entrepôt cible';

  @override
  String get sdContinue => 'Continuer';

  @override
  String get sdLinkedVoucherCreated => 'Bon créé et lié';

  @override
  String get sdVoucherCreatedLinkFailed => 'Bon créé mais échec du lien';

  @override
  String sdCreationFailed(Object error) {
    return 'Échec de la création : $error';
  }

  @override
  String get sdUnlinkVoucher => 'Détacher le bon ?';

  @override
  String get sdUnlinkVoucherDesc =>
      'Supprimera uniquement le lien entre le reçu fournisseur et le bon de stock, sans supprimer le bon.';

  @override
  String get sdUnlinked => 'Lien supprimé';

  @override
  String get sdLinkToSupplierReceipt =>
      'Lier au reçu fournisseur — Bon d\'entrée';

  @override
  String get sdEmptyVoucherAutoLink =>
      'Bon d\'entrée vide + liaison automatique';

  @override
  String get sdLinkInstruction =>
      'Ou sélectionnez un bon d\'entrée enregistré, ou entrez le numéro / identifiant puis « Rechercher et lier ».';

  @override
  String get sdNoVouchersYet =>
      'Aucun bon d\'entrée dans la base — utilisez le champ ci-dessous lorsque disponible.';

  @override
  String get sdLatestVouchers => 'Derniers bons';

  @override
  String get sdLinked => 'Lié';

  @override
  String get sdLinkFailed => 'Échec de la liaison';

  @override
  String get sdVoucherNoOrId => 'Numéro ou identifiant du bon';

  @override
  String get sdClose => 'Fermer';

  @override
  String get sdVoucherNotFound => 'Aucun bon d\'entrée trouvé avec ce numéro';

  @override
  String get sdSearchAndLink => 'Rechercher et lier';

  @override
  String get sdEditSupplier => 'Modifier le fournisseur';

  @override
  String get sdName => 'Nom';

  @override
  String get sdPhone => 'Téléphone';

  @override
  String get sdSupplierDefault => 'Fournisseur';

  @override
  String get sdEditTooltip => 'Modifier';

  @override
  String get sdSupplierNotFound => 'Fournisseur introuvable';

  @override
  String get sdBalanceOwedToYou => 'Rien dû à ce fournisseur';

  @override
  String get sdOverpayment => 'Solde en votre faveur (surpaiement / erreur)';

  @override
  String get sdBalanceWithSupplier => 'Solde avec le fournisseur';

  @override
  String get sdNoBillForPayout =>
      'Aucun reçu fournisseur ne couvre ce paiement — utilisez « Annuler le paiement » à côté';

  @override
  String sdPhoneLabel(Object phone) {
    return 'Téléphone : $phone';
  }

  @override
  String get sdPaymentWithoutReceipt =>
      'Avertissement : payé au fournisseur sans enregistrer de reçu. Si le paiement a été fait par erreur,';

  @override
  String get sdSupplierReturnLabel => 'Retour fournisseur';

  @override
  String get sdSupplierPaymentLabel => 'Paiement fournisseur';

  @override
  String get sdSupplierReceiptLabel => 'Reçu fournisseur';

  @override
  String get sdSupplierReceipts => 'Reçus fournisseur';

  @override
  String get sdLinkReceiptInstruction =>
      'Vous pouvez lier chaque reçu à un bon d\'entrée (numéro) lors de l\'enregistrement des bons dans la base.';

  @override
  String get sdNoReceiptsYet => 'Aucun reçu pour le moment.';

  @override
  String get sdOurPayments => 'Nos paiements';

  @override
  String get sdNoPaymentsYet => 'Aucun paiement pour le moment.';

  @override
  String get sdRecordLabel => 'Enregistrer';

  @override
  String sdBillRef(Object ref) {
    return 'Reçu #$ref';
  }

  @override
  String get sdBillNoRef => 'Reçu (sans numéro)';

  @override
  String get sdUnlinkVoucherTooltip => 'Détacher le bon';

  @override
  String get sdLinkVoucherTooltip => 'Lier un bon d\'entrée';

  @override
  String sdLinkedVoucher(Object ref) {
    return 'Bon d\'entrée : $ref';
  }

  @override
  String sdTheirDate(Object date) {
    return 'Leur date : $date';
  }

  @override
  String sdRecordedDate(Object date) {
    return 'Enregistré : $date';
  }

  @override
  String sdPaymentRef(Object ref) {
    return 'Paiement #$ref';
  }

  @override
  String get sdReverseTooltip => 'Annuler le paiement (erreur / surpaiement)';

  @override
  String get sdRecordedInCash => 'Enregistré en caisse';

  @override
  String get sdNotInCash => 'Sans caisse';

  @override
  String sdInvoiceVoucherRef(Object ref) {
    return 'Bon de facture #$ref';
  }

  @override
  String sdLinkedVoucherShort(Object ref) {
    return 'Lié au bon #$ref';
  }

  @override
  String get sohPending => 'En attente';

  @override
  String get sohInProgress => 'En cours';

  @override
  String get sohReadyForDelivery => 'Prêt pour retrait';

  @override
  String get sohDelivered => 'Livré';

  @override
  String get sohSinceStart => 'Depuis le début';

  @override
  String get sohOverdue => 'En retard';

  @override
  String get sohTimeRemaining => 'Temps restant';

  @override
  String get sohTryReLogin =>
      'Essayez de vous déconnecter puis reconnecter, ou redémarrez l\'application.';

  @override
  String get sohRestartToCompleteInit =>
      'Redémarrez l\'application pour finaliser l\'initialisation de la base.';

  @override
  String get sohUnexpectedLocalData =>
      'Données locales inattendues ; redémarrez l\'application. Si ça persiste, signalez au support.';

  @override
  String get sohDatabaseBusy =>
      'Base de données occupée ; attendez quelques secondes et réessayez.';

  @override
  String get sohPersistentError =>
      'Si le problème persiste, redémarrez l\'application.';

  @override
  String get sohNewTicketBreadcrumb => 'Nouveau ticket de maintenance';

  @override
  String get sohFailedToLoadTickets => 'Échec du chargement des tickets.';

  @override
  String sohDebugDetails(Object error) {
    return 'Détails techniques : $error';
  }

  @override
  String get sohRetry => 'Réessayer';

  @override
  String get sohNoTicketsInTab => 'Aucun ticket dans cet onglet.';

  @override
  String get sohNoMatchingResults => 'Aucun résultat correspondant.';

  @override
  String get sohReturnBadge => 'Retour';

  @override
  String get sohCreditSaleBadge => 'Vente à crédit';

  @override
  String get sohInstallmentBadge => 'Versement';

  @override
  String get sohDeliveryBadge => 'Livraison';

  @override
  String get sohDeadlineOverdue =>
      'Délai dépassé — terminez le travail ou mettez à jour le statut.';

  @override
  String get sohTicketDetailsBreadcrumb => 'Détails du ticket';

  @override
  String get sohCustomerDefault => 'Client';

  @override
  String sohSerialPlate(Object value) {
    return 'Série/Plaque : $value';
  }

  @override
  String sohValueLabel(Object value) {
    return 'Valeur : $value';
  }

  @override
  String sohPaidLabel(Object value) {
    return 'Payé : $value';
  }

  @override
  String sohDepositLabel(Object value) {
    return 'Acompte : $value';
  }

  @override
  String sohRemainingLabel(Object value) {
    return 'Restant : $value';
  }

  @override
  String get sohConvertToInvoiceTooltip => 'Convertir en facture';

  @override
  String get sohItemsSentToSale => 'Articles envoyés à l\'écran de vente.';

  @override
  String get sohFailedToOpenSale =>
      'Échec de l\'ouverture de la vente — vérifiez le ticket ou réessayez.';

  @override
  String get sohWorkStarted => 'Travail commencé et suivi du délai lancé';

  @override
  String get sohStartWorkLabel => 'Commencer le travail';

  @override
  String get sohTicketMovedToReady => 'Ticket déplacé vers Prêt pour retrait';

  @override
  String get sohMoveToReady => 'Déplacer vers Prêt';

  @override
  String get sohReadyForDeliveryLabel => 'Prêt pour retrait';

  @override
  String get sohGoToPaymentLabel => 'Aller au paiement';

  @override
  String get sohDeliveryRecorded => 'Livraison enregistrée';

  @override
  String get sohDeliveryFailed =>
      'Échec de la livraison — vérifiez les montants dans les détails.';

  @override
  String get sohConfirmDelivery => 'Confirmer la livraison';

  @override
  String get sohMaintenanceOrdersTitle => 'Ordres de maintenance';

  @override
  String get sohRefreshTooltip => 'Actualiser';

  @override
  String get sohNewTicketLabel => 'Nouveau ticket';

  @override
  String get sohSearchHint => 'Rechercher par client, appareil ou série…';

  @override
  String get sohDefaultServiceName => 'Service technique';

  @override
  String sohSerialPrefix(Object value) {
    return 'S/N : $value';
  }

  @override
  String get sohSparePartDefault => 'Pièce de rechange';

  @override
  String get sohNewSaleBreadcrumb => 'Nouvelle vente';

  @override
  String get psTitle => 'Paramètres des Produits';

  @override
  String get psTabSetup => 'Configuration Produits';

  @override
  String get psTabTracking => 'Suivi des Produits';

  @override
  String get psTabVouchers => 'Bons d\'Inventaire';

  @override
  String get psTabDefaults => 'Valeurs par Défaut';

  @override
  String get psSetupTitle => 'Configuration Produits';

  @override
  String get psSetupDesc =>
      'Numérotation automatique, tarification avancée, système d\'unités et gestion des lots.';

  @override
  String get psNextSkuTitle => 'Numéro de Série du Prochain Produit';

  @override
  String get psNextSkuDecoration => 'Numéro Suivant';

  @override
  String get psNumberingSettings => 'Paramètres de Numérotation';

  @override
  String get psNextSkuHint =>
      'Le numéro affiché comme indice du prochain identifiant. Le préfixe est enregistré dans les paramètres de numérotation.';

  @override
  String get psAdvancedPricingTitle => 'Options de Tarification Avancée';

  @override
  String get psEnabled => 'Activé';

  @override
  String get psDisabled => 'Désactivé';

  @override
  String get psAdvancedPricingDesc =>
      'Lorsque activé : dans \"Ajouter un Produit\", le prix de vente et le prix minimum sont suggérés à partir du prix d\'achat selon la marge ci-dessous (modifiable manuellement avant l\'enregistrement).';

  @override
  String get psCostMarginDecoration => 'Marge sur Coût (%)';

  @override
  String get psCostMarginHint => 'Exemple : 25';

  @override
  String get psMinSellPriceDesc =>
      'Prix de vente minimum en pourcentage du prix de vente (%)';

  @override
  String get psMinSellPriceHint => '100 = Égal au prix de vente';

  @override
  String get psSaveSuggestedPrices => 'Enregistrer les Prix Suggérés';

  @override
  String get psPricingExample =>
      'Exemple : coût 10 000 et marge 25% → prix de vente suggéré 12 500. Ratio prix minimum 100% rend le prix minimum = prix de vente.';

  @override
  String get psMultiUnitTitle => 'Utiliser Plusieurs Unités par Article';

  @override
  String get psManageUnits => 'Gérer les Unités';

  @override
  String get psMultiUnitDesc =>
      'Autoriser l\'achat en une unité et la vente en une autre avec des facteurs de conversion depuis les modèles d\'unités.';

  @override
  String get psDefaultStockDisplayTitle =>
      'Unité par Défaut pour l\'Affichage du Stock';

  @override
  String get psUnitBase => 'Unité de Base du Modèle';

  @override
  String get psUnitBaseDesc =>
      'Afficher le stock dans l\'unité de base du modèle.';

  @override
  String get psUnitSale => 'Unité de Vente';

  @override
  String get psUnitSaleDesc =>
      'Afficher le solde dans l\'unité de vente par défaut.';

  @override
  String get psUnitPurchase => 'Unité d\'Achat';

  @override
  String get psUnitPurchaseDesc =>
      'Afficher le solde dans l\'unité d\'achat par défaut.';

  @override
  String get psStockDisplayDesc =>
      'Détermine comment le stock est affiché dans les rapports et l\'inventaire lorsque le multi-unité est activé.';

  @override
  String get psBundlesTitle => 'Lots et Unités Composites';

  @override
  String get psBundlesAllowed => 'Autorisé';

  @override
  String get psBundlesNotAllowed => 'Non Autorisé';

  @override
  String get psBundlesDesc =>
      'Définir un article composite à partir de plusieurs articles et déduire le stock lors de l\'assemblage ou de la vente (nécessite un développement futur).';

  @override
  String get psAddProductPoliciesTitle =>
      'Politiques de l\'Écran Ajouter un Produit';

  @override
  String get psShowAdvancedPricing =>
      'Afficher la Section Tarification Avancée';

  @override
  String get psShowAdvancedPricingDesc =>
      'Contrôle la visibilité de la taxe, la remise, le prix minimum de vente et la marge bénéficiaire.';

  @override
  String get psShowBarcodeField => 'Afficher le Champ Code-Barres';

  @override
  String get psBarcodeRequired => 'Code-Barres Obligatoire à l\'Enregistrement';

  @override
  String get psShowImageField => 'Afficher le Champ Image du Produit';

  @override
  String get psImageRequired => 'Image du Produit Obligatoire';

  @override
  String get psShowExtraFields => 'Afficher les Champs Supplémentaires';

  @override
  String get psShowExtraFieldsDesc =>
      'Comme : notes internes, étiquettes, poids et dates de production/expiry.';

  @override
  String get psSupplierRequired =>
      'Fournisseur Obligatoire à l\'Enregistrement';

  @override
  String get psWarehouseRequired => 'Entrepôt Obligatoire à l\'Enregistrement';

  @override
  String get psDefaultTrackingEnabled => 'Activer le Suivi de Stock par Défaut';

  @override
  String get psDefaultTrackingDesc =>
      'Affecte l\'état du bouton lors de l\'ouverture de l\'écran Ajouter un Produit.';

  @override
  String get psAddProductPoliciesDesc =>
      'Ces politiques s\'appliquent directement à l\'écran \"Ajouter un Produit\" sans affecter l\'écran de vente.';

  @override
  String get psTrackingTitle => 'Suivi des Produits';

  @override
  String get psTrackingDesc =>
      'Configurer les méthodes de suivi et le comportement du système lorsque le stock est épuisé.';

  @override
  String get psSerialBatchExpiryTitle =>
      'Suivi par Numéro de Série / Lot / Date d\'Expiry';

  @override
  String get psSerialBatchExpiryDesc =>
      'Lorsque activé, le suivi peut être activé pour chaque produit individuellement lors de l\'ajout.';

  @override
  String get psNegativeStockTitle => 'Stock Négatif';

  @override
  String get psNegativeStockStop =>
      'Arrêter les opérations lorsque le stock est épuisé pour tous les produits';

  @override
  String get psNegativeStockStopDesc =>
      'Empêcher les ventes ou les sorties lorsque le stock atteint zéro.';

  @override
  String get psNegativeStockTrackableOnly =>
      'Autoriser uniquement les produits suivis à avoir des quantités négatives';

  @override
  String get psNegativeStockTrackableDesc =>
      'Les ventes ou sorties négatives sont autorisées selon la politique de l\'article.';

  @override
  String get psNegativeStockDesc =>
      'Détermine le comportement du système lorsque le stock est épuisé.';

  @override
  String get psShowTotalAvailableTitle =>
      'Afficher la Quantité Totale et Disponible';

  @override
  String get psShowTotalAvailableDesc =>
      'Afficher la quantité totale vs disponible après les réservations (lorsque la réservation est activée plus tard).';

  @override
  String get psVouchersTitle => 'Bons d\'Inventaire';

  @override
  String get psVouchersDesc =>
      'Créer des demandes d\'inventaire, numérotation des bons de transfert et les lier aux ventes et achats.';

  @override
  String get psInventoryRequestsTitle => 'Demandes d\'Inventaire';

  @override
  String get psInventoryRequestsDesc =>
      'Permettre aux départements de soumettre des demandes d\'inventaire pour examen. Les permissions sont définies par les rôles utilisateurs.';

  @override
  String get psTransferVoucherNextTitle =>
      'Prochain Numéro de Série du Bon de Transfert';

  @override
  String get psTransferVoucherNextDecoration => 'Numéro';

  @override
  String get psTransferVoucherNextDesc =>
      'Le prochain numéro suggéré pour les bons de transfert.';

  @override
  String get psSalesVoucherTitle => 'Bons d\'Inventaire pour Factures de Vente';

  @override
  String get psSalesVoucherDesc =>
      'Lorsque activé, crée un bon de sortie nécessitant une approbation avant la déduction du stock.';

  @override
  String get psPurchaseVoucherTitle =>
      'Bons d\'Inventaire pour Factures d\'Achat';

  @override
  String get psPurchaseVoucherDesc =>
      'Lorsque activé, crée un bon d\'entrée nécessitant une approbation avant l\'ajout du stock.';

  @override
  String get psDefaultsTitle => 'Valeurs par Défaut du Système';

  @override
  String get psDefaultsDesc =>
      'Valeurs suggérées automatiquement pour les entrepôts, produits et taxes.';

  @override
  String get psDefaultSubAccountTitle => 'Sous-Compte par Défaut';

  @override
  String get psPleaseChoose => 'Veuillez choisir';

  @override
  String get psNone => '— Aucun —';

  @override
  String get psGeneralInventory => 'Inventaire Général';

  @override
  String get psRawMaterials => 'Matières Premières';

  @override
  String get psCommercial => 'Commercial';

  @override
  String get psDefaultSubAccountDesc =>
      'Utilisé comme référence comptable lors du lien inventaire-comptes.';

  @override
  String get psDefaultWarehouseTitle => 'Entrepôt par Défaut';

  @override
  String get psManageWarehouses => 'Gérer les Entrepôts';

  @override
  String get psChooseWarehouse => 'Choisir un entrepôt';

  @override
  String get psDefaultWarehouseDesc =>
      'Suggéré lors de l\'ajout de nouveaux produits et mouvements de stock.';

  @override
  String get psDefaultPriceListTitle => 'Liste de Prix par Défaut';

  @override
  String get psManagePriceLists => 'Gérer les Listes';

  @override
  String get psDefaultPriceListDesc =>
      'Utilisée comme liste de prix par défaut pour la succursale actuelle lorsque le lien est disponible.';

  @override
  String get psDefaultTax1Title => 'Taxe par Défaut 1';

  @override
  String get psManageTaxes => 'Gérer les Taxes';

  @override
  String get psTaxRatesDesc =>
      'Les taux de taxe sont définis par produit ou depuis les paramètres de facture.';

  @override
  String get psDefaultTax1Desc =>
      'Suggérée pour les nouveaux produits et compatible avec le champ taxe du produit.';

  @override
  String get psDefaultTax2Title => 'Taxe par Défaut 2';

  @override
  String get psDefaultTax2Desc =>
      'Pour une utilisation double lors du support de deux taxes ultérieurement.';

  @override
  String get psReturnCostMethodTitle => 'Méthode de Calcul du Coût des Retours';

  @override
  String get psReturnBySalePrice => 'Par Prix de Vente';

  @override
  String get psReturnBySalePriceDesc =>
      'Utiliser le prix de vente de la facture de vente.';

  @override
  String get psReturnByAvgCost => 'Par Dernier Coût Moyen';

  @override
  String get psReturnByAvgCostDesc =>
      'Utiliser le coût moyen lors de la création du retour.';

  @override
  String get psReturnCostDesc =>
      'Appliqué lors du traitement des retours de vente.';

  @override
  String get psBusinessNatureTitle => 'Nature de l\'Activité Commerciale';

  @override
  String get psNatureProducts => 'Produits Uniquement';

  @override
  String get psNatureProductsDesc => 'Convient à l\'inventaire physique.';

  @override
  String get psNatureServices => 'Services Uniquement';

  @override
  String get psNatureServicesDesc =>
      'Activités basées sur le temps ou les projets.';

  @override
  String get psNatureBoth => 'Produits et Services';

  @override
  String get psNatureBothDesc => 'Combine les deux types dans le système.';

  @override
  String get psBusinessNatureDesc =>
      'Détermine le focus par défaut dans les écrans d\'inventaire et de facturation.';

  @override
  String get psVoucherPermEnabled => 'Activé';

  @override
  String get psVoucherPermDisabled => 'Désactivé';

  @override
  String get psTaxExempt => 'Exonéré';

  @override
  String get psCustomTax => 'Personnalisé';

  @override
  String get psTransferSettingsTitle =>
      'Paramètres de Numérotation des Transferts';

  @override
  String get psOptionalPrefix => 'Préfixe Optionnel';

  @override
  String get psExamplePrefix => 'Exemple : TR-';

  @override
  String get psCancel => 'Annuler';

  @override
  String get psSave => 'Enregistrer';

  @override
  String get psSavePrefixHint =>
      'Le préfixe est enregistré dans les paramètres de numérotation.';

  @override
  String get psSerialHint =>
      'Le numéro affiché comme indice du prochain identifiant. Le préfixe est enregistré dans les paramètres de numérotation.';

  @override
  String get psTaxToggleTooltip =>
      'Désactiver la gestion de la taxe — masquer le champ de taxe';

  @override
  String get psShowTaxField => 'Afficher le champ de taxe';

  @override
  String get psTaxToggleDesc =>
      'Dans «Ajouter un produit». L\'icône de blocage désactive la taxe entièrement.';

  @override
  String get psDiscountToggleTooltip =>
      'Désactiver la gestion des remises — masquer les champs de remise';

  @override
  String get psShowDiscountFields => 'Afficher les champs de remise';

  @override
  String get psDiscountToggleDesc =>
      'Dans «Ajouter un produit». L\'icône de blocage désactive les remises entièrement.';

  @override
  String get sodEditTicket => 'Modifier le ticket';

  @override
  String get sodSearchParts => 'Rechercher des pièces…';

  @override
  String get sodProduct => 'Produit';

  @override
  String get sodAddPart => 'Ajouter une pièce';

  @override
  String get sodPart => 'Pièce';

  @override
  String get sodQuantity => 'Quantité';

  @override
  String get sodSalePrice => 'Prix de vente (Fdj)';

  @override
  String get sodCancel => 'Annuler';

  @override
  String get sodAdd => 'Ajouter';

  @override
  String get sodTechnicalService => 'Service technique';

  @override
  String get sodSerialPlate => 'Série/Plaque';

  @override
  String get sodNewSale => 'Nouvelle vente';

  @override
  String get sodTicketDetails => 'Détails du ticket';

  @override
  String get sodEdit => 'Modifier';

  @override
  String get sodUpdate => 'Mettre à jour';

  @override
  String get sodAddPartShort => 'Ajouter pièce';

  @override
  String get sodCustomer => 'Client';

  @override
  String get sodSerialInfo => 'Série/Plaque';

  @override
  String get sodConvertToInvoice => 'Convertir en facture de vente';

  @override
  String get sodParts => 'Pièces';

  @override
  String get sodNoPartsYet => 'Aucune pièce ajoutée.';

  @override
  String get sodInvoiceItems => 'Articles de la facture';

  @override
  String get sodViewOnly => 'Consultation uniquement';

  @override
  String get sodInvoiceProductsDesc =>
      'Produits et services enregistrés dans la facture de vente liée.';

  @override
  String get sodPastDue => 'Date de livraison dépassée';

  @override
  String get sodExpectedDelivery => 'Date de livraison prévue';

  @override
  String sodWorkDurationMin(Object minutes) {
    return 'Durée de travail estimée : $minutes min';
  }

  @override
  String get sodPending => 'En attente';

  @override
  String get sodInProgress => 'En cours';

  @override
  String get sodReadyForDelivery => 'Prêt à livrer';

  @override
  String get sodDelivered => 'Livré';

  @override
  String get sodCancelled => 'Annulé';

  @override
  String get sodFinancialSummary => 'Résumé financier (Fils)';

  @override
  String get sodService => 'Service technique';

  @override
  String get sodPartsLabel => 'Pièces';

  @override
  String get sodTotal => 'Total';

  @override
  String get sodPaidAdvance => 'Avance payée';

  @override
  String get sodRemainingOnDelivery => 'Reste à la livraison';

  @override
  String sodQtyPriceTotal(Object price, Object qty, Object total) {
    return 'Qté: $qty · Prix: $price · Total: $total';
  }

  @override
  String sodQtyOnly(Object qty) {
    return 'Qté: $qty';
  }

  @override
  String get sodDelete => 'Supprimer';

  @override
  String get sodLoadError => 'Échec du chargement des données du ticket.';

  @override
  String get sodRetry => 'Réessayer';

  @override
  String get settingsImportMeds => 'Importer les médicaments';

  @override
  String get settingsImportMedsDesc =>
      'Ajouter 157 médicaments depuis le fichier d\'inventaire';

  @override
  String get settingsImportMedsConfirm =>
      '157 médicaments seront ajoutés au catalogue. Voulez-vous continuer ?';

  @override
  String settingsImportedCount(Object count) {
    return '$count médicaments importés avec succès';
  }

  @override
  String settingsImportError(Object error) {
    return 'Erreur : $error';
  }

  @override
  String get settingsAppVersion => 'Version 1.0.0';

  @override
  String get settingsCopyright => '© 2026 Maarey. Tous droits réservés.';

  @override
  String get settingsLicenseActive => 'Actif';

  @override
  String get settingsLicenseTrial => 'Essai';

  @override
  String get settingsLicenseInactive => 'Inactif';

  @override
  String get settingsLicenseDisconnected => 'Déconnecté';

  @override
  String get settingsLicenseNone => 'Pas de licence';

  @override
  String get settingsDeviceAllowed => 'L\'appareil a été autorisé à revenir';

  @override
  String settingsDeviceCount(Object count) {
    return '$count appareils';
  }

  @override
  String get settingsSubscription => 'Abonnement';

  @override
  String settingsSubscriptionExpires(Object date) {
    return 'L\'abonnement expire le : $date';
  }

  @override
  String settingsDaysRemaining(Object days) {
    return 'Environ $days jours restants';
  }

  @override
  String get settingsSubscriptionActiveNoExpiry =>
      'Abonnement actif sans date d\'expiration dans le cloud.';

  @override
  String get settingsLinkedDevices => 'Appareils liés au compte';

  @override
  String get settingsUpdate => 'Mettre à jour';

  @override
  String get settingsNoDevicesRegistered => 'Aucun appareil enregistré.';

  @override
  String settingsLastActive(Object date) {
    return 'Dernière activité : $date';
  }

  @override
  String get settingsDisconnectedCannotLogin =>
      'Déconnecté — ne peut pas se connecter tant qu\'il n\'est pas approuvé';

  @override
  String get settingsThisDevice => 'Cet appareil';

  @override
  String get settingsAllowReturn => 'Autoriser le retour';

  @override
  String get settingsDisconnectDevice => 'Déconnecter l\'appareil';

  @override
  String get settingsAutoSync => 'Synchronisation automatique';

  @override
  String get settingsAutoSyncDesc =>
      'Une sauvegarde complète de la base de données est envoyée depuis chaque appareil ; la dernière dans le cloud est importée sur l\'appareil.';

  @override
  String get settingsSyncNow => 'Synchroniser maintenant';

  @override
  String settingsLastSync(Object date) {
    return 'Dernière synchronisation : $date';
  }

  @override
  String get settingsSyncSuccess => 'Synchronisation réussie';

  @override
  String get settingsClearCloudProducts => 'Effacer les produits cloud';

  @override
  String get settingsClearCloudProductsDesc =>
      'Tous les produits seront supprimés uniquement du cloud. Les paramètres, factures et clients ne seront pas affectés. Voulez-vous continuer ?';

  @override
  String get settingsCleared =>
      'Produits cloud effacés. Appuyez sur Synchroniser';

  @override
  String settingsClearFailed(Object error) {
    return 'Échec de l\'effacement : $error';
  }

  @override
  String get settingsViewSubscriptionPlans => 'Voir les plans d\'abonnement';

  @override
  String get settingsSubscriptionPlans => 'Plans d\'abonnement';

  @override
  String get settingsThankYou => 'Merci de votre confiance';

  @override
  String get sofTenantError =>
      'Impossible de déterminer les données du locataire. Rouvrez l\'application et réessayez.';

  @override
  String get sofDbInitError =>
      'La base de données nécessite une initialisation/mise à jour. Rouvrez l\'application et réessayez.';

  @override
  String get sofUnexpectedError =>
      'Une erreur inattendue s\'est produite lors de l\'enregistrement.';

  @override
  String get sofExpectedWorkDuration => 'Durée de travail estimée';

  @override
  String get sofHours => 'heures';

  @override
  String get sofMinutes => 'minutes';

  @override
  String get sofCancel => 'Annuler';

  @override
  String get sofDone => 'Terminé';

  @override
  String get sofNotSet =>
      'Non défini — appuyez pour choisir les heures et minutes';

  @override
  String sofHoursMinutes(Object hours, Object minutes) {
    return '${hours}h ${minutes}m — appuyez pour modifier';
  }

  @override
  String sofHoursOnly(Object hours) {
    return '$hours heures — appuyez pour modifier';
  }

  @override
  String sofMinutesOnly(Object minutes) {
    return '$minutes minutes — appuyez pour modifier';
  }

  @override
  String get sofTaskNotStarted =>
      'Après \'Commencer le travail\' depuis la liste des tickets, la date est fixée à partir de l\'heure de début.';

  @override
  String sofWorkDurationMin(Object minutes) {
    return 'Durée de travail estimée : $minutes min';
  }

  @override
  String get sofPastDue => 'Date de livraison dépassée';

  @override
  String get sofExpectedDelivery => 'Date de livraison prévue (pour le client)';

  @override
  String get sofSearchServices => 'Rechercher des services…';

  @override
  String get sofService => 'Service';

  @override
  String get sofEditTicket => 'Modifier le ticket';

  @override
  String get sofNewTicket => 'Nouveau ticket';

  @override
  String get sofSave => 'Enregistrer';

  @override
  String get sofSaveError =>
      'Une erreur s\'est produite lors de l\'enregistrement. Réessayez.';

  @override
  String get sofAll => 'Tout';

  @override
  String get sofCustomerName => 'Nom du client';

  @override
  String get sofCustomerSearchHint =>
      'Commencez à taper pour rechercher les clients';

  @override
  String get sofCustomerRequired => 'Le nom du client est requis';

  @override
  String get sofCustomer => 'Client';

  @override
  String get sofNewCustomer => 'Nouveau client';

  @override
  String get sofDeviceName => 'Nom de l\'appareil / véhicule';

  @override
  String get sofDeviceNameRequired => 'Le nom de l\'appareil est requis';

  @override
  String get sofSerialPlateOptional => 'Série / Plaque (optionnel)';

  @override
  String get sofSerialHint =>
      'Si laissé vide, un numéro de référence interne est généré automatiquement pour le ticket (pas la série de l\'appareil).';

  @override
  String get sofExpectedDuration => 'Durée estimée';

  @override
  String get sofServiceTitle => 'Service';

  @override
  String get sofServiceNotSet => 'Non défini (optionnel)';

  @override
  String get sofServiceSet => 'Défini';

  @override
  String get sofSelect => 'Sélectionner';

  @override
  String get sofEstimatedPrice => 'Prix estimé (du service)';

  @override
  String get sofEstimatedPriceHint =>
      'Rempli automatiquement depuis le prix du service';

  @override
  String get sofAgreedPrice => 'Prix convenu (Fdj)';

  @override
  String get sofAgreedPriceHint => 'L\'unique endroit pour modifier le prix';

  @override
  String get sofInvalidAmount => 'Entrez un montant valide';

  @override
  String get sofAdvancePayment => 'Acompte (Fdj)';

  @override
  String get sofProblemDesc => 'Description du problème (optionnel)';

  @override
  String get sofSaving => 'Enregistrement…';

  @override
  String get sofSaveTicket => 'Enregistrer le ticket';

  @override
  String get licCheckingLicense => 'Vérification de la licence…';

  @override
  String get licNoInternet => 'Pas de connexion Internet';

  @override
  String get licOfflineWarning =>
      'L\'application fonctionne avec les dernières données de licence enregistrées.\nAssurez-vous de vous connecter dès que possible.';

  @override
  String get licRetry => 'Réessayer';

  @override
  String get licEnterWithoutConnection => 'Entrer sans connexion';

  @override
  String get licUpgradeForDevices => 'Upgrade plan to add devices';

  @override
  String osUnexpectedInitError(Object error) {
    return 'Erreur inattendue lors de l\'initialisation : $error';
  }

  @override
  String osErrorOpeningShift(Object error) {
    return 'Échec de l\'ouverture du quart : $error';
  }

  @override
  String osShiftOpenedMsg(Object id) {
    return 'Quart #$id ouvert avec succès';
  }

  @override
  String osOpenShiftNotifTitle(Object id) {
    return 'Ouvrir le quart #$id';
  }

  @override
  String osDetailStaff(Object name) {
    return 'Personnel du quart : $name';
  }

  @override
  String osDetailSystemBalance(Object amount) {
    return 'Solde système à l\'ouverture : $amount';
  }

  @override
  String osDetailPhysicalCount(Object amount) {
    return 'Comptage manuel de caisse : $amount';
  }

  @override
  String osDetailAddedCash(Object amount) {
    return 'Argent ajouté à l\'ouverture : $amount';
  }

  @override
  String get osResumeShift => 'Reprendre le Quart';

  @override
  String osResumeShiftDesc(Object name) {
    return 'Un quart ouvert existe sous \"$name\". Entrez le mot de passe de l\'employé pour continuer.';
  }

  @override
  String get osResumeShiftHint =>
      'Entrez le mot de passe de l\'employé pour continuer';

  @override
  String osUserFallback(Object id) {
    return 'Utilisateur #$id';
  }

  @override
  String osErrorLoadingUsersParam(Object error) {
    return 'Échec du chargement des utilisateurs du quart : $error';
  }

  @override
  String get osPasswordHint => 'Mot de passe de l\'utilisateur sélectionné';

  @override
  String get osOpeningShiftLoading => 'Ouverture du quart…';

  @override
  String get csNoOpenShift => 'Aucun quart ouvert';

  @override
  String get csCloseShiftTitle => 'Fermer le Quart';

  @override
  String get csShiftSummary => 'Résumé du Quart';

  @override
  String get csSalesInvoices => 'Factures de Vente';

  @override
  String get csReturnInvoices => 'Factures de Retour';

  @override
  String get csPasswordVerifyTitle =>
      'Confirmer avec le mot de passe de l\'employé (optionnel)';

  @override
  String get csPasswordHintNoUser =>
      'Entrez le mot de passe de connexion pour vérifier. Laissez vide pour ignorer la vérification';

  @override
  String csPasswordHintWithName(Object name) {
    return 'Entrez le mot de passe du compte \"$name\" pour vérifier. Laissez vide pour ignorer la vérification';
  }

  @override
  String get csPasswordPlaceholder => 'Mot de connexion (optionnel)';

  @override
  String get csSystemBalance => 'Solde de Caisse (Système)';

  @override
  String get csBalanceDesc =>
      'Le solde est déterminé automatiquement à partir des mouvements de caisse. Vérifiez les valeurs puis confirmez le retrait.';

  @override
  String get csCashInBox => 'Argent en Caisse';

  @override
  String get csWithdrawAmount => 'Montant à Retirer';

  @override
  String get csRemainingAfterWithdraw => 'Reste en Caisse après Retrait';

  @override
  String get csConfirmClose => 'Confirmer et Fermer le Quart';

  @override
  String get csPasswordVerifyError =>
      'Échec de la vérification du mot de passe pour ce compte';

  @override
  String get csUserVerifyError =>
      'Échec de la vérification de l\'utilisateur actuel';

  @override
  String get csNoSavedPassword =>
      'Aucun mot de passe enregistré pour ce compte. Laissez le champ vide.';

  @override
  String get csWrongPassword => 'Mot de passe incorrect';

  @override
  String get csWithdrawNegative =>
      'Le montant du retrait ne peut pas être négatif';

  @override
  String get csWithdrawExceeds =>
      'Le montant du retrait dépasse l\'argent en caisse';

  @override
  String csCloseError(Object error) {
    return 'Échec de la fermeture du quart : $error';
  }

  @override
  String get csRefreshBalance => 'Actualiser le solde';

  @override
  String get csInvalidValue => 'Valeur invalide';

  @override
  String csCloseNotifTitle(Object id) {
    return 'Fermer le quart #$id';
  }

  @override
  String get csShiftClosedMsg =>
      'Quart fermé. Ouvrez un nouveau quart pour continuer.';

  @override
  String csDetailStaff(Object name) {
    return 'Personnel du quart : $name';
  }

  @override
  String csDetailSystemBalanceClose(Object amount) {
    return 'Solde système à la fermeture : $amount Fdj';
  }

  @override
  String csDetailDeclaredCash(Object amount) {
    return 'Argent déclaré en caisse : $amount Fdj';
  }

  @override
  String csDetailWithdrawn(Object amount) {
    return 'Retiré : $amount Fdj';
  }

  @override
  String csDetailRemaining(Object amount) {
    return 'Reste en caisse après retrait : $amount Fdj';
  }

  @override
  String get cashBucketInvoices =>
      'Factures et ventes (écritures liées à une facture)';

  @override
  String get cashBucketOther => 'Autres mouvements';

  @override
  String get cashDeclaredClosingCash => 'Montant déclaré restant en caisse';
}

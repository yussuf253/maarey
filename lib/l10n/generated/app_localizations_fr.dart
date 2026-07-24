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
}

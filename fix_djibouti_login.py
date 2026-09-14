from pathlib import Path
import shutil
import sys

ROOT = Path.cwd()

FILES = [
    ROOT / "lib" / "widgets" / "inputs" / "app_input.dart",
    ROOT / "lib" / "screens" / "login_screen.dart",
    ROOT / "lib" / "l10n" / "app_en.arb",
    ROOT / "lib" / "l10n" / "app_fr.arb",
    ROOT / "lib" / "l10n" / "app_ar.arb",
]


def replace_exact(path: Path, old: str, new: str, description: str):
    if not path.exists():
        raise RuntimeError(f"Fichier introuvable: {path}")

    text = path.read_text(encoding="utf-8")

    count = text.count(old)

    if count == 0:
        raise RuntimeError(
            f"[STOP] Texte introuvable dans {path}:\n"
            f"  {description}\n"
            f"Le script ne modifie pas ce fichier."
        )

    if count > 1:
        raise RuntimeError(
            f"[STOP] Texte trouvé {count} fois dans {path}:\n"
            f"  {description}\n"
            f"Remplacement ambigu. Aucun changement effectué."
        )

    backup = path.with_suffix(path.suffix + ".bak")

    if not backup.exists():
        shutil.copy2(path, backup)

    path.write_text(text.replace(old, new, 1), encoding="utf-8")

    print(f"✓ {path}")
    print(f"  {description}")


def main():
    print("=== Maarey — Djibouti login/web autofill fix ===\n")

    app_input = ROOT / "lib" / "widgets" / "inputs" / "app_input.dart"
    login = ROOT / "lib" / "screens" / "login_screen.dart"

    # ------------------------------------------------------------------
    # 1. AppInput : ajouter autofillHints
    # ------------------------------------------------------------------

    replace_exact(
        app_input,
        "    this.textInputAction,\n",
        "    this.textInputAction,\n"
        "    this.autofillHints,\n",
        "Ajout de la propriété autofillHints au constructeur",
    )

    replace_exact(
        app_input,
        "  final TextInputAction? textInputAction;\n",
        "  final TextInputAction? textInputAction;\n"
        "  final Iterable<String>? autofillHints;\n",
        "Ajout du champ autofillHints",
    )

    replace_exact(
        app_input,
        "          textInputAction: widget.textInputAction,\n",
        "          textInputAction: widget.textInputAction,\n"
        "          autofillHints: widget.autofillHints,\n",
        "Transmission de autofillHints vers TextFormField",
    )

    # ------------------------------------------------------------------
    # 2. Login screen : Djibouti au lieu d'Iraq
    # ------------------------------------------------------------------

    replace_exact(
        login,
        "  String _dialCode = '+964';\n",
        "  String _dialCode = '+253';\n",
        "Code pays par défaut remplacé par +253",
    )

    replace_exact(
        login,
        "bool _iraqMobileOk(String raw) {\n"
        "    final digits = raw.replaceAll(RegExp(r'\\D'), '');\n"
        "    return RegExp(r'^07\\d{9}$').hasMatch(digits);\n"
        "  }\n",
        "bool _djiboutiMobileOk(String raw) {\n"
        "    final digits = raw.replaceAll(RegExp(r'\\D'), '');\n"
        "    return RegExp(r'^\\d{8}$').hasMatch(digits);\n"
        "  }\n",
        "Validation téléphone Djibouti : 8 chiffres",
    )

    replace_exact(
        login,
        "final _iraqDialChip",
        "final _djiboutiDialChip",
        "Renommage du helper country chip",
    )

    replace_exact(
        login,
        "_iraqMobileOk",
        "_djiboutiMobileOk",
        "Renommage du validator téléphone",
    )

    replace_exact(
        login,
        "_iraqDialChip()",
        "_djiboutiDialChip()",
        "Utilisation du chip Djibouti",
    )

    replace_exact(
        login,
        "loc.iraqMobileInvalid",
        "loc.djiboutiMobileInvalid",
        "Clé de localisation téléphone",
    )

    replace_exact(
        login,
        "loc.iraqDialTooltip",
        "loc.djiboutiDialTooltip",
        "Clé de localisation country chip",
    )

    replace_exact(
        login,
        "🇮🇶",
        "🇩🇯",
        "Drapeau Iraq remplacé par Djibouti",
    )

    replace_exact(
        login,
        "+964",
        "+253",
        "Code pays affiché remplacé par +253",
    )

    replace_exact(
        login,
        "07701234567",
        "77123456",
        "Exemple téléphone remplacé par un numéro Djibouti à 8 chiffres",
    )

    replace_exact(
        login,
        "LengthLimitingTextInputFormatter(11)",
        "LengthLimitingTextInputFormatter(8)",
        "Limite du numéro passée de 11 à 8 chiffres",
    )

    # ------------------------------------------------------------------
    # 3. Autofill login
    # ------------------------------------------------------------------

    replace_exact(
        login,
        "return Form(\n"
        "      key: _loginFormKey,\n"
        "      child: Column(\n"
        "        key: const ValueKey('login'),\n",
        "return AutofillGroup(\n"
        "      child: Form(\n"
        "        key: _loginFormKey,\n"
        "        child: Column(\n"
        "          key: const ValueKey('login'),\n",
        "          \n",
        "          \n",
        "          \n",
        "          \n"
        "          \n"
        "          \n"
        "          \n"
        "          \n",
        "        ),\n"
        "      ),\n"
        "    ),\n",
        "Encapsulation du formulaire login dans AutofillGroup",
    )

    print(
        "\nATTENTION : la structure exacte de _loginForm varie selon la version "
        "du fichier.\n"
        "Le script s'arrête volontairement si ce bloc n'est pas identique."
    )

    print("\n=== Terminé ===")


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"\n❌ {e}")
        print("\nAucune modification supplémentaire n'a été effectuée.")
        sys.exit(1)

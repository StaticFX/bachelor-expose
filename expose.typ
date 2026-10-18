// ============================================================
// expose.typ – Hauptdatei (generisches Template)
// Kompilieren: typst compile expose.typ
//
// ANLEITUNG:
// 1. Metadaten im cover()-Aufruf ausfüllen
// 2. content/*.typ mit eigenen Inhalten befüllen
// 3. Quellen in refs.bib eintragen, im Text mit @schluessel
//    zitieren – IEEE-Stil wird automatisch angewendet
// 4. typst compile expose.typ
// ============================================================

#import "components/settings.typ": apply-settings
#import "components/cover.typ": cover

#show: apply-settings

#cover(
  title: "KI-gestützte Softwareentwicklung ohne Cloud-Abhängigkeit. Eine Evaluation selbstgehosteter Coding-Agenten zum Schutz geistigen Eigentums bei der Zellerfeld R&D GmbH",
  anlass: "Exposé zur Bachelorarbeit",
  author: "Devin Fritz",
  matrikelnummer: "12976",
  studiengang: "Angewandte Informatik",
  jahrgang: "A23a",
  logo: image("res/NA_Logo_positiv_Subline_NA_BLUE_linksbuendig_RGB_72dpi.webp", width: 7.5cm),
  betreuer-fh: "Markus Drewes",
  betreuer-praxis: "Julian Danz",
  bearbeitungszeitraum: "14.11.2026 - 08.02.2027",
  abgabedatum: "Noch zu bestimmen",
)

#include "content/01_titelerklaerung.typ"
#include "content/02_relevanz.typ"
#include "content/03_forschungsstand.typ"
#include "content/04_forschungsfrage.typ"
#include "content/05_forschungsdesign.typ"
#include "content/06_gliederung.typ"
#include "content/07_literatur.typ"

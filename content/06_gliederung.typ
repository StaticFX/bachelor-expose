= Vorläufige Gliederung

+ *Einleitung* \
  _Beschreibt die Ausgangslage bei der Zellerfeld R&D GmbH und leitet daraus Forschungsfrage, Zielsetzung und Abgrenzung ab._
  + Motivation und Problemstellung
  + Forschungsfrage und Zielsetzung
  + Abgrenzung
  + Aufbau der Arbeit

+ *Theoretische Grundlagen* \
  _Erläutert die zentralen Begriffe und Konzepte, auf denen Artefakt und Evaluation aufbauen._
  + Sprachmodelle und Open-Weight-Modelle
  + Coding-Agenten
  + Lokale Inferenz und Quantisierung
  + Julia als Low-Resource-Programmiersprache

+ *Stand der Forschung* \
  _Ordnet bestehende Studien zu Coding-Agenten und lokalen Modellen ein und leitet daraus die Forschungslücke ab._
  + Evaluation von Coding-Agenten
  + Lokale Modelle und begrenzte Hardware
  + Forschungslücke

+ *Methodik* \
  _Begründet den Design-Science-Ansatz und legt fest, wie Anforderungen erhoben, Aufgaben ausgewählt und Ergebnisse bewertet werden._
  + Forschungsansatz
  + Anforderungserhebung
  + Aufgabenset
  + Erfolgskriterien je Aufgabenklasse und Erfolgsschwelle
  + Durchführung und Auswertung

+ *Anforderungen und Rahmenbedingungen* \
  _Dokumentiert die Ergebnisse der Anforderungserhebung und die Designentscheidungen, aus denen sich die Anforderungen an den Agenten ergeben._
  + Schutz geistigen Eigentums als Randbedingung
  + Hardware und Entwicklungsumgebung
  + Modellauswahl und Inferenzserver
  + Anforderungen an den Agenten

+ *Konzeption und Umsetzung des lokalen Agenten* \
  _Beschreibt Aufbau und Umsetzung des Artefakts und schreibt im Erstdurchlauf die Konfiguration für die Evaluation fest._
  + Architektur
    + Interaktiver Einsatz am Entwicklerrechner
    + Automatisierte Issue-Bearbeitung über GitLab
  + Umsetzung für Julia-Projekte
  + Absicherung von Inferenzserver und Issue-Verarbeitung
  + Erstdurchlauf und Festlegung der Konfiguration

+ *Ergebnisse der Evaluation* \
  _Stellt die Erfolgsquoten je Aufgabenklasse der Schwelle von 80 % gegenüber und beschreibt Laufzeiten und Fehlermuster._
  + Testgenerierung
  + Performance-Optimierung
  + Dokumentation
  + Bearbeitung von GitLab-Issues
  + Laufzeit und Fehlermuster

+ *Diskussion und Einsatzfähigkeit* \
  _Interpretiert die Ergebnisse, ordnet sie gegenüber veröffentlichten Benchmarkwerten ein und benennt die Grenzen der Arbeit._
  + Interpretation der Ergebnisse
  + Einordnung gegenüber öffentlichen Benchmarks
  + Beantwortung der Forschungsfrage
  + Limitationen der Arbeit

+ *Fazit und Ausblick* \
  _Fasst die Ergebnisse zusammen und gibt Empfehlungen für den Einsatz im Unternehmen sowie für weitere Forschung._
  + Handlungsempfehlungen für den Einsatz im Unternehmen
  + Weiterführende Forschungsansätze



#pagebreak()
= Zeitplan

#figure(
  table(
    columns: (auto, 1fr),
    align: left,
    [*Zeitraum*], [*Arbeitsschritt*],
    [bis 13.11.2026], [Vorbereitung: Literaturrecherche, Anforderungserhebung, Sichtung der Julia-Projekte, Entwurf Aufgabenset],
    [14.11. – 04.12.], [Aufbau des Artefakts, Erstdurchlauf und Festlegung der Konfiguration],
    [05.12. – 08.01.], [Messläufe der Evaluation; parallel Kapitel 1–6],
    [22.12.2026], [_Vorgabe:_ Abgabe Beispielkapitel (Kapitel 6)],
    [09.01. – 29.01.], [Auswertung, Kapitel 7–9, Überarbeitung inkl. Feedback],
    [30.01. – 08.02.], [Puffer],
    [08.02.2027], [Abgabe der Bachelorarbeit],
  ),
  caption: [Zeitplan mit Meilensteinen],
)
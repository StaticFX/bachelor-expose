// ============================================================
// content/02_relevanz.typ
//
// NAK-ANFORDERUNG:
// Motivation und Hintergrund der Forschungsfrage darlegen.
// Klären: Warum ist das Thema relevant? Welcher Forschungs-
// bedarf besteht? NAK-spezifisch: auch den wirtschaftlichen
// Bedarf des Vorhabens aufgreifen.
// ============================================================

= Problemstellung <relevanz>

// HINWEIS: Dieser Abschnitt soll motivieren und den Leser
// abholen. Beginne mit dem großen Bild (gesellschaftlicher /
// wirtschaftlicher Kontext), dann zoome auf das konkrete
// Problem ein. Belege Aussagen mit Quellen — keine
// unbelegten Behauptungen.

== Wirtschaftlicher und praktischer Hintergrund

// Beantworte hier: Warum ist das Thema für Unternehmen relevant?
// Was kostet das Problem? Welche Chancen oder Risiken entstehen?
// Nutze Zahlen, Studien, Marktdaten wo möglich.

In der Produktentwicklung wird Tagtäglich Software von Hand entwickelt. Diese Software ist dabei Teil des Kerngeschäfts der Zellerfeld R&D GmbH. Zellerfeld R&D stellt Schuhe im 3D-Druck Verfahren her. Dabei müssen die 3D-Modelle der Schuhe in Maschinencode für die 3D-Drucker übersetzt werden. Hierzu wird ein sogenannter Slicer eingesetzt. Dieser "sliced" das 3D-Modell in Schichten und erzeugt dabei Maschinencode. Die Entwicklung des Zlicers (interner Name) ist dabei proprietär und äußert Geheimzuhalten. Der Zlicer wird komplett in Julia entwickelt. Um dies Sicherzustellen ist jegliche Nutzung von Cloud-Diensten welche den Code lesen könnten untersagt. Dazu gehört auch Claude Code. Durch die Rasante Entwicklung von KI-gestützten Coding-Agenten, welche den Code analysieren und verbessern können, ist es ein spürbarer Nachteil im Entwickleralltag dieses Werkzeug nicht nutzen zu können. Auch Automatisierungsaufgaben welche die Agentischen-Fähigkeiten nutzen könnten, können nicht genutzt werden. Dies führt zu einem erhöhten Entwicklerbedarf sowie ein größer manueller menschlicher Aufwand.
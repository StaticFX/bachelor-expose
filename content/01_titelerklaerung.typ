// ============================================================
// content/01_titelerklaerung.typ
//
// NAK-ANFORDERUNG:
// Den gewählten Titel direkt zu Beginn erläutern und in seine
// Einzelteile sezieren. Dem Lesenden soll deutlich werden,
// warum exakt diese Formulierung für das Forschungsvorhaben
// gewählt wurde.
// ============================================================

= Erläuterung des Titels

Der Titel der Arbeit lautet:

#block(
  inset: (left: 1.5em, top: 0.6em, bottom: 0.6em),
  stroke: (left: 2.5pt + rgb("#003A79")),
)[
  #text(style: "italic", weight: "bold")[
    KI-gestützte Softwareentwicklung ohne Cloud-Abhängigkeit. Eine Evaluation selbstgehosteter Coding-Agenten zum Schutz geistigen Eigentums bei der Zellerfeld R&D GmbH
  ]
]

// HINWEIS: Gehe jeden Kernbegriff des Titels einzeln durch.
// Erkläre, warum er so und nicht anders formuliert wurde.
// Grenze ihn von verwandten Begriffen ab (z.B. "KI" vs. "ML",
// "Analyse" vs. "Evaluation", "Konzept" vs. "Prototyp").

*KI-Gestütze Entwicklung ohne Cloud-Abhängigkeit:* Unternehmensweit wird Claude Code zur Softwareentwicklung eingesetzt. In der Produktentwicklungsabteilung ist dabei die Nutzung von Cloud-Diensten nicht möglich, da geistiges Eigentum geschützt werden muss.

*Eine Evaluation selbstgehosteter Coding-Agenten:* In der Arbeit wird anhang Wissenschaftlicher Methoden (siehe unten) untersucht, ob selbstgehostete Coding-Agenten einen praktikablen Einsatz im Alltag finden können. 

*Schutz geistigen Eigentums:* Siehe @relevanz
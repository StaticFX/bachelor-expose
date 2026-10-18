// ============================================================
// cover.typ – Titelseite mit Uni-Logo (NAK-konform)
// ============================================================

#let cover(
  title: "",
  anlass: "Exposé Bachelorarbeit",
  author: "",
  matrikelnummer: "",
  studiengang: "",
  jahrgang: "",
  logo: none,
  betreuer-fh: "",
  betreuer-praxis: "",
  bearbeitungszeitraum: "",
  abgabedatum: "",
) = {
  page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2.5cm, left: 3cm, right: 2.5cm),
    numbering: none,
    header: none,
  )[
    #{
      // ── Logo oben links ────────────────────────────────────
      align(left, if logo != none { logo })

      v(1fr)

      // ── Anlass ────────────────────────────────────────────
      align(left)[
        #text(size: 9.5pt, fill: luma(130), tracking: 1.5pt)[#upper(anlass)]
        #v(0.5em)
        #line(length: 100%, stroke: 2pt + rgb("#003A79"))
        #v(0.7em)
        #set par(justify: false)
        #text(size: 15.5pt, weight: "bold", fill: rgb("#003A79"))[#title]
      ]

      v(1.8em)
      line(length: 100%, stroke: 0.4pt + luma(210))
      v(1.2em)

      // ── Metadaten-Grid ────────────────────────────────────
      grid(
        columns: (4.5cm, 1fr),
        row-gutter: 0.55em,

        text(fill: luma(130), size: 9.5pt)[Verfasser],
        text(size: 9.5pt, weight: "bold")[#author],

        text(fill: luma(130), size: 9.5pt)[Matrikelnummer],
        if matrikelnummer == "" {
          text(size: 9.5pt, fill: luma(160), style: "italic")[eintragen]
        } else {
          text(size: 9.5pt)[#matrikelnummer]
        },

        text(fill: luma(130), size: 9.5pt)[Studiengang],
        text(size: 9.5pt)[#studiengang],

        text(fill: luma(130), size: 9.5pt)[Jahrgang / Zenturie],
        text(size: 9.5pt)[#jahrgang],

        [], [],

        text(fill: luma(130), size: 9.5pt)[Betreuer (FH)],
        text(size: 9.5pt)[#betreuer-fh],

        text(fill: luma(130), size: 9.5pt)[Betreuer (Praxis)],
        if betreuer-praxis == "" {
          text(size: 9.5pt, fill: luma(160), style: "italic")[noch offen]
        } else {
          text(size: 9.5pt)[#betreuer-praxis]
        },

        [], [],

        text(fill: luma(130), size: 9.5pt)[Bearbeitungszeitraum],
        if bearbeitungszeitraum == "" {
          text(size: 9.5pt, fill: luma(160), style: "italic")[eintragen]
        } else {
          text(size: 9.5pt)[#bearbeitungszeitraum]
        },

        text(fill: luma(130), size: 9.5pt)[Abgabedatum],
        if abgabedatum == "" {
          text(size: 9.5pt, fill: luma(160), style: "italic")[eintragen]
        } else {
          text(size: 9.5pt)[#abgabedatum]
        },
      )

      v(1fr)

      // ── Fußzeile ──────────────────────────────────────────
      align(center)[
        #line(length: 100%, stroke: 0.3pt + luma(200))
        #v(0.3em)
        #text(size: 8pt, fill: luma(150))[
          Nordakademie – Hochschule der Wirtschaft | Köllner Chaussee 11 | 25337 Elmshorn
        ]
      ]
    }
  ]
}

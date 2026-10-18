// ============================================================
// settings.typ – Globale Einstellungen & Styles
// ============================================================

#let apply-settings(body) = {
  set document(
    title: "Exposé zur Bachelorarbeit",
    author: "Timothy Spriegade",
  )

  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2.5cm),
    numbering: "1",
    number-align: right,
    header: context {
      if counter(page).get().first() > 1 {
        grid(
          columns: (1fr, auto),
          align(left)[
            #text(size: 8pt, fill: luma(140))[Exposé zur Bachelorarbeit | Timothy Spriegade]
          ],
          align(right)[
            #text(size: 8pt, fill: luma(140))[Angewandte Informatik 2023]
          ],
        )
        line(length: 100%, stroke: 0.3pt + luma(180))
      }
    },
  )

  set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "de",
  )

  set par(
    justify: true,
    leading: 0.75em,
    spacing: 1.2em,
  )

  set heading(numbering: "1.1")

  show heading.where(level: 1): it => {
    v(1.2em)
    text(weight: "bold", size: 13pt, it)
    v(0.4em)
  }

  show heading.where(level: 2): it => {
    v(0.8em)
    text(weight: "bold", size: 11pt, it)
    v(0.2em)
  }

  // Blockquote-Style für hervorgehobene Forschungsfragen
  show quote: it => block(
    inset: (left: 1.5em, top: 0.5em, bottom: 0.5em),
    stroke: (left: 2pt + luma(160)),
    it.body,
  )

  body
}

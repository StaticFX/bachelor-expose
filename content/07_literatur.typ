// ============================================================
// content/07_literatur.typ
//
// NAK-ANFORDERUNG:
// Alle im Exposé genutzten Quellen formal korrekt auflisten.
// Ausschließlich zitierwürdige Literatur (Peer-Review,
// Impact Factor, anerkannte Institutionen, Standardwerke).
// Optional: zusätzlich die für die spätere Arbeit geplante
// Literatur auflisten (klar getrennt).
//
// VERWENDUNG:
// Quellen in refs.bib pflegen und im Text mit @schluessel
// zitieren. Das Quellenverzeichnis wird automatisch generiert.
// Mit full: true erscheinen auch nicht zitierte Einträge
// aus refs.bib (z.B. geplante Literatur).
//
// ZITIERSTIL: IEEE (Nummern in eckigen Klammern [1], [2], ...)
// Alternativen: "apa", "chicago-author-date", "mla"
// ============================================================

#show bibliography: set par(justify: true)

#pagebreak()

#bibliography(
  "../refs.bib",
  title: "Quellenverzeichnis",
  style: "apa",
  full: true,
)

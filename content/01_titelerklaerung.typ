= Titel und Forschungsfragen

#block(
  inset: (left: 1.5em, top: 0.6em, bottom: 0.6em),
  stroke: (left: 2.5pt + rgb("#003A79")),
)[
  #text(style: "italic", weight: "bold")[
    Lokal betriebener Coding-Agent für proprietäre Julia-Codebasen: Konzeption und Evaluation bei der Zellerfeld R&D GmbH
  ]]

Der Arbeit liegt die folgende Forschungsfrage zugrunde:

#quote(block: true)[
  Welche Entwicklungsaufgaben in den Julia-Codebasen der Zellerfeld R&D GmbH lassen sich mit einem lokal betriebenen Coding-Agenten mit einer Erfolgsquote von mindestens 80 % automatisieren?
]

Die Schwelle von 80 % wurde mit der Entwicklungsabteilung festgelegt. Zur Beantwortung der Forschungsfrage werden folgende Teilfragen untersucht:

+ Welche Erfolgsquote erreicht der Agent bei Testgenerierung, Performance-Optimierung und Dokumentation?
+ Welche Erfolgsquote erreicht der Agent bei der eigenständigen Behebung von GitLab-Issues?
+ Welche Laufzeiten und Fehlerarten treten dabei auf?

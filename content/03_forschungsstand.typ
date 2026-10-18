
= Stand der Forschung

Für Unternehmen, die die Übermittlung von Quellcode an externe Anbieter ausschließen, kommen kommerzielle Coding-Agenten nicht in Frage. Selbstgehostete Modelle sind die naheliegende Alternative. Ob sie für den praktischen Einsatz ausreichen, lässt sich aus der bestehenden Literatur nur eingeschränkt ableiten.

Offene Modelle haben auf öffentlichen Benchmarks deutlich aufgeholt. #cite(<bahrami_kozuchi_2026>, form: "prose") lösen mit einem lokal gehosteten Modell der 27B-Klasse ohne Feintuning 374 von 500 Aufgaben aus SWE-bench Verified @jimenez_swe-bench_2024. Die Evaluation erfolgt jedoch auf einem Server mit mehreren GPUs und beschränkt sich auf die Behebung von Issues. Den Einsatz auf proprietären Repositories klammern die Autoren ausdrücklich aus. #cite(<matotek_evaluating_2025>, form: "prose") evaluieren lokal betriebene Modelle mit 6,7 bis 9 Milliarden Parametern an Wettbewerbsaufgaben und stellen fest, dass diese etwa die Hälfte der Erfolgsquote proprietärer Modelle erreichen. #cite(<mundhra_evaluating_2025>, form: "prose") untersuchen Sprachmodelle in einer proprietären Industriecodebasis, betrachten dabei aber die Code-Generierung per Prompting statt agentischer Abläufe.

Hinzu kommt, dass öffentliche Benchmarks die Leistung von Modellen überschätzen können. #cite(<riddell_quantifying_2024>, form: "prose") zeigen eine erhebliche Überschneidung gängiger Code-Benchmarks mit offenen Trainingsdaten. Modelle schneiden auf Aufgaben, deren Lösungen im Training enthalten waren, deutlich besser ab. Proprietärer Quellcode ist von diesem Effekt nicht betroffen.

#figure(
  table(
    columns: 5,
    align: left,
    [*Arbeit*], [*Agentisch*], [*Begrenzte Hardware*], [*Proprietärer Code*], [*Mehrere Aufgabenklassen*],
    [#cite(<bahrami_kozuchi_2026>, form: "prose")], [ja], [nein], [nein], [nein],
    [#cite(<mundhra_evaluating_2025>, form: "prose")], [nein], [nein], [ja], [nein],
    [#cite(<matotek_evaluating_2025>, form: "prose")], [nein], [ja], [nein], [nein],
  ),
  caption: [Abdeckung der Merkmale dieser Arbeit durch bestehende Studien],
)

Keine der Arbeiten verbindet agentische Bearbeitung, lokalen Betrieb auf begrenzter Hardware, proprietäre Repositories und eine Differenzierung nach praxisrelevanten Aufgabenklassen. Offen ist damit, ob sich die auf öffentlichen Benchmarks gemessene Leistung offener Modelle auf diesen Kontext übertragen lässt.

Auch die Forschung zur Quantisierung adressiert den Betrieb auf begrenzter Hardware. #cite(<giagnorio_evaluating_2026>, form: "prose") zeigen, dass eine Quantisierung auf 4 Bit den Speicherbedarf von Code-Modellen um etwa 70 % reduziert, ohne die Leistung signifikant zu beeinträchtigen. Diese Studien evaluieren jedoch isolierte Code-Generierung und keine agentischen Abläufe @afrin_quantize_2026.
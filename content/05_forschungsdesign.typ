= Methodik

Die Arbeit wird nach dem Design-Science-Research-Ansatz nach #cite(<hevner_design_2004>, form: "prose") durchgeführt. Dieser Ansatz eignet sich, da sich die Forschungsfrage nur durch die Entwicklung eines Artefakts beantworten lässt. Ein fertiges Werkzeug, das die Anforderungen des Unternehmens unter Wahrung des Schutzes geistigen Eigentums erfüllt, existiert bisher nicht. Das Vorgehen orientiert sich am Prozessmodell von #cite(<peffers_design_2007>, form: "prose"). Es besteht aus den Phasen Problemidentifikation, Zieldefinition, Design und Entwicklung, Demonstration, Evaluation und Kommunikation.

Zu Beginn werden die Anforderungen des Unternehmens an den Einsatz von KI-gestützten Coding-Agenten erfasst. Erste Gespräche mit der Entwicklungsabteilung liegen bereits vor. Diese werden leitfadengestützt nachgeführt und dokumentiert. Aus den Anforderungen werden Evaluationskriterien abgeleitet, die festlegen, wann eine Aufgabe als gelöst gilt.

Auf Grundlage der Anforderungen wird ein Artefakt entwickelt. Dieses verbindet ein lokal betriebenes Sprachmodell mit einem Agenten-Harness und einer Anbindung an GitLab. Vor der eigentlichen Evaluation wird das Artefakt mit wenigen Aufgaben demonstriert, um die Konfiguration festzuschreiben.

Das Aufgabenset wird aus abgeschlossenen GitLab-Issues und der Git-Historie der Julia-Codebasen zusammengestellt. Die tatsächlich umgesetzte Lösung dient als Referenz. Jede Aufgabe wird dreimal mit unveränderter Konfiguration ausgeführt. Ein Lauf, der nach 30 Minuten keine Lösung liefert, gilt als gescheitert.

#figure(
  table(
    columns: (auto, auto, 1fr),
    align: left,
    [*Aufgabenklasse*], [*Aufgaben*], [*Gelöst, wenn …*],
    [Testgenerierung], [20], [die Tests auf dem korrigierten Stand bestehen und auf dem Stand vor einem historischen Bugfix fehlschlagen],
    [Performance-Optimierung], [20], [die bestehende Testsuite besteht und die Median-Laufzeit um mindestens 10 % sinkt],
    [Dokumentation], [15], [die Dokumentation fachlich korrekt ist und mindestens 6 von 8 Punkten im Bewertungsschema erreicht],
    [Issue-Behebung], [20], [die bestehenden Tests sowie die Tests des ursprünglichen Fixes bestehen],
  ),
  caption: [Aufgabenklassen und Erfolgskriterien],
)

Die Erfolgsquote einer Klasse ist der Anteil gelöster Läufe an allen Läufen und wird mit 95-%-Konfidenzintervall berichtet. Eine Aufgabenklasse gilt als automatisierbar, wenn ihre Erfolgsquote mindestens 80 % beträgt. Zusätzlich werden die Laufzeit je Lauf, getrennt nach Inferenz und Werkzeugausführung, sowie die Fehlerart gescheiterter Läufe erfasst. Ein Fünftel der Dokumentationsaufgaben wird von einem zweiten Entwickler unabhängig bewertet. Design und Reporting der Evaluation orientieren sich an den Leitlinien von #cite(<wagner_towards_2024>, form: "prose").

Die Ergebnisse werden je Aufgabenklasse in drei Stufen eingeordnet. Liegt die untere Grenze des Konfidenzintervalls über 80 %, wird ein automatisierter Einsatz empfohlen. Liegt nur der Punktwert über 80 %, wird ein Pilotbetrieb mit verpflichtendem Review empfohlen. Bei niedrigeren Werten wird geprüft, ob der Agent als Assistenz unter menschlicher Kontrolle einen Nutzen bietet. Maßgeblich sind dafür die Fehlerarten: Plausibel wirkende, aber fehlerhafte Lösungen wiegen schwerer als erkennbare Abbrüche. Ergänzend wird in der Diskussion die gemessene Leistung den veröffentlichten Benchmarkwerten des Modells gegenübergestellt. Anhand der Ergebnisse wird die Forschungsfrage beantwortet und eine Empfehlung für den Einsatz im Unternehmen abgeleitet.

Als Hardware wird ein Gigabyte AI TOP ATOM mit NVIDIA GB10 und 128 GB gemeinsamem Arbeitsspeicher eingesetzt. Aufgrund der begrenzten Speicherbandbreite kommen vorrangig Mixture-of-Experts-Modelle mit wenigen aktiven Parametern in Frage; vorgesehen ist Qwen3-Coder-Next.

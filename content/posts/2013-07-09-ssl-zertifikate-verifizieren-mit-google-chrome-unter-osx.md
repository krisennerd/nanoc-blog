---
title: "SSL Zertifikate verifizieren mit Google Chrome unter OS X"
created_at: 09.07.2013
kind: article
published: true
author: Pascal
tags: [ 'Apple', 'Chrome', 'Google', 'Mac', 'OS X', 'SSL', 'Verschlüsselung' ]
---
Mein Standard Browser unter OS X ist seit einiger Zeit [Chrome](https://www.google.com/intl/de/chrome/browser/ ). Das liegt zum einen daran, dass der Browser stabil läuft, schnell ist und es alle Plugins dafür gibt die ich benötige. Zum anderen liegt es daran, dass ich diesen verbuggten Flash-Player so nicht installieren muss.

Da ich ja mit [Chris](http://debilux.org/ ) zusammen einen [Podcast](http://skrupuloes.de/ ) produziere (naja wir versuchen es zumindest – aber die Terminfülle macht uns des öfteren einen Strich durch die Rechnung) müssen wir ja auch irgendwie unsere Themen sammeln und das ganze für die Shownotes sammeln. Das geschieht auf einem [Etherpad Lite](http://etherpad.org/ ) auf Chris’ Server.

Nervig war allerdings, dass ich bisher immer die Meldung bekommen habe, dass das Zertifikat des Server nicht sicher wäre. Grundsätzlich kein Problem, da es ja mit einem Klick erledigt ist. Nervt aber eben irgendwann. Jetzt ist es zum Beispiel unter Firefox ziemlich einfach das Zertifikat zu verifizieren, da es innerhalb des Browser geschieht. Wie das Ganze bei Chrome unter Windows aussieht kann ich nicht sagen.

<!-- more -->

Man mag es mir nachsehen, aber ich musste erst einmal etwas googlen bis ich brauchbare Infos gefunden habe, wie das Zertifikat unter OS X als vertrauenswürdig gekennzeichnet werden kann. Die Anleitung war letzten endes auf Englisch. Ich habe da kein Problem mit. Gibt ja aber auch Menschen die dieser Sprache nicht mächtig sind. Daher will ich die Vorgehensweise hier kurz beschreiben. Außerdem bin ich vielleicht mal irgendwann froh mit der Gedächtnisstütze.

Wenn Ihr nun diese Meldung habt, dass eine Website mit SSL Verschlüsselung unsicher ist, klickt einfach oben links in der Adressleiste auf das durchgekreuzte Schloss. In dem erscheinenden Fenster klickt Ihr auf Zertifikatinformationen. 
Nun müsst ihr das große Zertifikat-Icon einfach auf den Desktop. Das Icon auf dem Desktop sollte auch einem Zertifikat ähneln.

Der nächste Schritt ist, die Schlüsselbundverwaltung zu öffnen und dort das Zertifikat einfach per Drag-and-Drop hinein ziehen.

**Wichtig: Speichert das Zertifikat unter dem Punkt “System” nicht unter “Anmeldung”.**

Zum Schluss könnte ihr mit einem Doppelklick auf das Zertifikat im Schlüsselbund für die verschiedenen Protokolle – oder eben gleich für alle – die nötigen Vertrauensstufen setzen.

Und siehe da: Ihr bekommt keine Fehlermeldung mehr und die https wird in strahlendem grün, dank sicherer Verbindung, angezeigt.

Ich hoffe der Beitrag konnte etwas helfen und Ihr spart Euch noch weitere Minuten googeln ;-)

**UPDATE: 11.07.2013**

Da ich auf app.net darauf hingewiesen wurde, dass Safari Zertifikate die innerhalb des Browsers verifiziert wurden in der OS X Keychain speichert, hier noch die Info, dass es zwar innerhalb von Firefox sehr einfach ist ein Zertifikat als Ausnahme zu bestätigen, aber es auch eben nur das ist. Anscheinend greift Firefox nicht auf die Keychain zu.
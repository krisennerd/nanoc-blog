---
title: "NFC Tags und Tasker – Automatisierung FTW!"
created_at: 30.07.2013
kind: article
published: true
author: Pascal
tags: [ 'Android', 'APG', 'BND', 'GPG', 'K-9', 'Kryptographie', 'Mac', 'NSA', 'PGP', 'PRISM', 'Smartphone', 'Tempora', 'Verschlüsselung' ]
---
Um den ersten etwas ausführlichen Artikel zu meinem neu erworbenen Android Smartphone zu verfassen und auch etwas auf der PRISM / Tempora Welle zu reiten hier ein Artikel zum Thema Verschlüsselung von E-Mails auf Android Geräten.

Um seine Mails auf einem Rechner (WIndows / OS X / Linux) zu verschlüsseln gibt es wie Sand am Meer. [Hier zum Beispiel wird das Ganze recht anschaulich erklärt.](https://www.youtube.com/watch?v=V9k0mnIFuOI&feature=youtu.be ) 

<!-- more -->

Wenn man jetzt länger z.B. mit öffentlichen Verkehrsmitteln unterwegs ist, würde man aber auch mal gerne Mails unterwegs lesen oder schreiben. Unter iOS ist mir zumindest mit PGP nicht ohne Jailbreak bekannt. Aber nun konkret dazu wie die Verschlüsselung mit PGP überhaupt auf dem Smartphone eingerichtet wird.

### Einrichten der Verschlüsselung mit PGP

In der Regel arbeitet man mit seinem Smartphone mit der selben E-Mail Adresse wie auf dem Rechner. Folglich will man auch die selben Schlüssel nutzen. Ich habe das mit folgenden Apps angestellt:

- [APG](https://play.google.com/store/apps/details?id=org.thialfihar.android.apg )
- [K-9 Mail](https://play.google.com/store/apps/details?id=com.fsck.k9 )
- [OI File Manager](https://play.google.com/store/apps/details?id=org.openintents.filemanager )

### Schlüssel vom Rechner importieren

Da ich im produktiven Einsatz einen MacBook nutze kann ich natürlich auch nur dafür die Anleitung bieten. Außerdem gehe ich davon aus, dass ihr die GPG Schlüsselbundverwaltung nutzt.

Jetzt muss der Schlüssel ausgewählt werden den ihr auf dem Smartphone nutzen wollt. Dann einfach mit Rechtsklick das Dropdown-Menü öffnen und “Exportieren” auswählen.

Danach könnt ihr auswählen mit welchem Dateinamen gespeichert werden soll und an welchem Speicherort. Außerdem gibt es die Auswahlmöglichkeit ob der Schlüssel als ASCII (.asc) oder Binär (.gpg) gespeichert werden soll. Macht für diesen Zweck aber keinen Unterschied, das APG beides versteht.

Wichtig dabei ist aber, dass das Häkchen bei “Geheime Schlüssel exportieren” gesetzt ist. Sonst wird nur euer öffentlicher Schlüssel exportiert und damit kann APG nicht viel anfangen um E-Mails oder Dateien zu entschlüsseln.

Nun habt ihr euren Schlüssel auf dem Desktop (oder sonst wo) liegen. Diesen Schlüssel jetzt bitte nicht per E-Mail verschicken, sondern per USB auf euer Smartphone ziehen. Am besten gleich in den APG Ordner den die App erstellt hat.

Jetzt geht es auf dem Smartphone weiter. APG öffnen. Menü-Taste drücken und “Private Schlüssel verwalten” auswählen (Schritt 1). Im folgenden Bildschirm wieder die Menü-Taste drücken und “Schlüssel importieren” auswählen (Schritt 2).  Danach mit dem OI Dateimanager die ASCII oder Binär Datei auswählen die ihr auf euer Smartphone gezogen habt (Schritt 3). Hier müsst ihr allerdings ein Teil des Pfades löschen. Benötigt wird nur folgender Teil:

<pre><code>storage/emulated/0/APG/Dateiname.asc</code></pre>

Bei euch kann der Pfad natürlich auch etwas abweichen.

Wenn Ihr jetzt schon K-9 Mail installiert habt, seid ihr schon so gut wie fertig. Ihr müsst jetzt noch K-9 öffnen und dann in folgendes Menü:

Menü-Taste > Kontoeinstellungen > Kryptographie

Hier könnt ihr auswählen, dass automatisch verschlüsselt wird, wenn die Person gegenüber einen öffentlichen Schlüssel besitzt den Ihr kennt. Ansonsten habt ihr auch die Möglichkeit für jede Mail einzeln zu Entscheiden ob ihr verschlüsseln wollt oder nicht.

Ich hoffe ich konnte euch helfen. Falls Ihr noch Fragen haben solltet, einfach her damit. Wenn ich sie beantworten kann helfe ich gerne :-)
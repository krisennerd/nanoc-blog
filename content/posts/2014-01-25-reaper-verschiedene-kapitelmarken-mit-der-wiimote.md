---
title: "Reaper – Verschiedene Kapitelmarken mit WiiMote"
created_at: 25.01.2014
kind: article
author: Pascal
published: true
tags: [ 'AppleScript', 'Podcast', 'Podcasting', 'Reaper' ]
---
In den letzten Tagen beschäftige ich mich intensiver mit dem Aufnahme-Workflow für [skrupuloes](http://skrupuloes.de/ ). Dazu habe ich mir die [Ultraschall Video Tutorials](http://ultraschall.wikigeeks.de/ ) von Ralf ([Wikigeeks](http://wikigeeks.de/ )) angeschaut. Dort erklärt er recht anschaulich wie man sich mittels WiiMote stumm schaltet und wie man mit dieser auch Kapitelmarken in Reaper setzen kann. Diese können auch mittlerweile direkt als .csv Datei zu auphonic importiert werden.

Was aber wenn ich nicht nur Kapitelmarken setzen will wenn ein Themenwechsel ansteht? Möglicherweise miaut die Katze unverhofft oder man legt eine Pinkelpause ein. In der Nachbearbeitung will man die Stellen auch schnell finden um sie raus zu schneiden. Das könnte man mit speziell eingefärbten Kapitelmarken tun. Aber wie soll das schnell während der Aufnahme gehen? Hierzu gibt es eine Möglichkeit. Auch wenn diese über zwei Banden gespielt ist. Momentan scheint es (nach meinem Kenntnisstand) keine bessere zu geben. Zur Sache:

<!-- more -->

### AppleScript um Marker direkt zu benennen
In Reaper gibt es leider nicht die Funktion einem Marker direkt einen Namen zuzuweisen. Diese müssen immer von Hand benannt werden. Dieses Problem kann man allerdings umgehen. Zumindest wenn man einfach eine farbliche Unterscheidung will und keine genauere Beschreibung. Wenn man OSCulator bereits eingerichtet hat, kann man dort einfach Tasten ein AppleScript zuweisen.
Das Script sieht dann wie folgt aus:
<pre><code>tell application "REAPER64"
activate
   tell application "System Events"
      keystroke "m" using {shift down}
      keystroke "Schnittmarke"
      keystroke return
   end tell
end tell
</code></pre>

### Marker automatisch Farben zuweisen
Um jetzt die mit festen Namen zugewiesenen Markern auch direkt eine Farbe zuzuweisen kann man das [Reaper SWS Plugin](http://code.google.com/p/sws-extension/ ) nutzen. Installieren und Reaper neu starten. Jetzt kann man über das Menu “Erweiterungen” oder “Extensions” den Punkt “Auto Color/Icon” auswählen.
Dort kann man dann Markern mit bestimmten Namen eine Farbe zuweisen.

Danke an Udo ([sein Podcast](http://www.fernsehmuell.de/ )) für die Idee mit dem einfärben der Kapitmarken!

### Der Internet-Stammtisch
Vielleicht ist es Zufall, vielleicht hat sich bei den Zuschauer_innen aber auch über die letzten Jahre zu viel Unmut angestaut: Gerade prasselt wegen zwei unterschiedlichen Themen (von zwei unterschiedliche Sendeanstalten) einiges an Kritik auf den öffentlich-rechtlichen Rundfunk.
Im Internet haben Debatten und Aufreger oft die Eigenheit sehr laut zu sein. Zum einen wird das sicherlich mit Filter-Blasen zusammenhängen die man sich fast unausweichlich schafft.
Nun habe ich auch das [Blog von Nico Lumma](http://lumma.de/2014/01/27/die-sache-mit-lanz-jauch-und-all-den-anderen/ ) abonniert. Ich bin selten seiner Meinung. Macht ja aber auch nichts. (Mein Versuch die Filterblase zu durchbrechen)
Nun schreibt Nico, dass im Netz ein Stammtisch-Niveau herrscht. Ich glaube allerdings, dass er den Fehler macht, durch das Netz auf ein besseres Niveau der Diskussion zu hoffen. Das Netz tut aber nur eines: Es ermöglicht mehr Menschen ihrer Meinung Gehöhr zu verschaffen. Was sonst in der Eckkneipe am Stammtisch verschallt landet nun eben bei Twitter, Facebook oder sonstwo – und verhallt damit nicht so schnell. Allerdings bietet sich mit dem Medium auch die Möglichkeit, dass geistreiche Beiträge eine weitere Reichweite haben. Das Grundrauschen kommt einem vielleicht nur etwas lauter vor. Die Qualität bleibt fast unverändert zum “analogen Leben”.

Falls dieser Beitrag jetzt etwas unstrukturiert und wirr wirkt, liegt das wohl daran, dass ich einfach mal meine Gedanken ausspeichern musste und diese eben zu lange für einen Post in einem sozialen Netzwerk waren.
Oder um es sinngemäß mit den Worten des Doctors zu sagen:

*“Ich denke viel ich kann mir nicht alles merken”*;-) 
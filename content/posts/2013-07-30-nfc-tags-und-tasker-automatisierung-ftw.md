---
title: "NFC Tags und Tasker – Automatisierung FTW!"
created_at: 30.07.2013
kind: article
published: true
author: Pascal
tags: [ 'Android', 'Automatisierung', 'NFC', 'Software', 'Tag', 'Tasker' ]
---
Wie bereits angeteasert will ich noch ein wenig darüber berichten, was ich mit meinen NFC Tags so anstelle. Ich muss gestehen, dass ich noch nicht alle angedachten Anwendungsbeispiele umgesetzt habe, aber ich will Euch heute einen Anwendungsfall erläutern, der mir einiges an Gefummel abnimmt und für den ich mir recht viel Mühe gegeben habe.

**Vorweg:** Ich bin in den beiden beschriebenen Programmen kein Ass. Um die Funktionen zu entdecken und anzuwenden war viel Probieren und Recherche notwendig.

<!-- more -->

### Das Ziel

Ziel für mich war, mittels eines NFC Tags das weg gehen und Heim kommen zu automatisieren. Also WLAN wird an- oder abgeschaltet. Energiesparmodus wird an- oder abgeschaltet. Foursquare Checkin usw. Bisher habe ich das alles einfach von Hand gemacht. Geht unter Android, dank Kontrollcenter zwar schon flüssiger als unter iOS aber ist immer noch nervig.

**Konkret: Smartphone an den Tag halten und alles soll sofort so eingestellt sein wie ich das haben will.**

### Die Probleme

Ich habe das Ganze dann mit dem NFC Aufgaben Launcher erstellt. Dort hat man die Möglichkeit einen Switch-Tag zu erstellen. Beim ersten mal scannen wird Funktion X ausgeführt und beim zweiten mal scannen wird Funktion Y ausgeführt. Klappte auch an sich super, wäre ich nicht so vergesslich und würde beim Heim kommen immer vergessen das Smartphone an den Tag zu halten.

1. Habe ich den ganzen Wust dann doch per Hand eingeschaltet
2. Wenn ich morgens aus dem Haus bin und den Tag nutzen wollte, war die Switch Aufgabe auf “Heim kommen” nicht auf “Aus dem Haus gehen”

### Meine Lösung

Gelöst habe ich das Problem mit zwei Apps. Zum einen der bereits erwähnte NFC Aufgaben Launcher und zum anderen mit Tasker. Tasker ist so etwas wie die eierlegende Wollmilchsau der Smartphone Automatisierung.

- [Trigger](https://play.google.com/store/apps/details?id=com.jwsoft.nfcactionlauncher& )
- [Tasker](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm& )

Zuerst habe ich eben diese beiden Tasks erstellt mit denen ich die jeweiligen Aktionen ausführen will:

**Aus dem Haus gehen (Task)**
<pre><code>Auto-Sync [setzen:Aus]
Lautlos [Modus:Vibrieren]
Wi-Fi [setzen:Aus]
Szene Zerstören [Name:Weg/Heim]
</code></pre>
**Nach Hause kommen (Task)**
<pre><code>Auto-Sync [setzen:An]
Wi-Fi [setzen:An]
Lade Applikation [App:Foursquare - Daten: - Von aktuellen Apps ausschließen:Aus]
</code></pre>
 Was es mit dem zerstören der Szene auf sich hat, erkläre ich gleich.

### Szene erstellen

Um zwischen den beiden Tasks wählen zu können, habe ich jetzt eine Szene erstellt. Die Buttons “Home” und “Away” sind jeweils mit den beiden Tasks “Nach Hause kommen” und “Aus dem Haus gehen” verknüpft. Somit habe ich das Problem mit dem Switch Task gelöst. Ich muss nicht immer abwechseln die Aktionen ausführen, sondern kann wählen, was gerade passieren soll. Es ist zwar wieder eine Button der von mir gedrückt werden. Aber trotzdem bleiben mir weitere Eingaben erspart. Der “Back” Button gibt mir einfach die Möglichkeit die Szene zu zerstören; Also die Szene zu schließen. Genau den selben Nutzen hat die Funtkion im 1. Task. Beim zweiten schließt sich die Szene von selbst, da eine Applikation geöffnet wird.

### Verbinden mit dem NFC-Tag
Zum Ende muss nur noch ein Task erstellt werden der die Szene öffnet.

Szene Anzeigen [Name: Weg /Heim Anzeigen Als: Dialog Horizontale Position: 100 Vertikale Position: 100 Exittaste Anzeigen:Aus sofort mit Task fortfahren:An]

Dieser wird dann über NFC Aufgaben Launcher mit dem entsprechenden Tag verbunden.

### Und auch sonst...
…bin ich wirklich froh mit meinen erworbenen NFC Tags. So kann ich ohne großen Aufwand Timer einstellen, die mich daran erinnern das Waschmaschine oder Trockner fertig sind, oder es wird automatisch [Airdroid](https://play.google.com/store/apps/details?id=com.sand.airdroid&hl=de ) und [Wunderlist](https://play.google.com/store/apps/details?id=com.wunderkinder.wunderlistandroid&hl=de ) gestartet wenn ich mich zu Hause in das Büro setze.

---
title: "Reclaim Social Media"
created_at: 29.11.2013
kind: article
published: true
author: Pascal
tags: [ 'Media', 'Plugins', 'Reclaim', 'Social', 'Wordpress' ]
---
Wir bewegen uns jeden Tag in sozialen Netzwerken. Doch was ist wenn diese irgendwann nicht mehr da sind? Wenn Facebook, Twitter und Co. irgendwann ihre Pforten schließen, was ist dann mit unseren Beiträgen?

Mit dieser Fragen haben sich auch [Sascha Lobo](http://saschalobo.com/ ) und [Felix Schwentzel](http://wirres.net/ ) beschäftigt. Zur [re:publica 2013](http://youtu.be/Raas1BhSIbs?t=50m ) haben sie dann das Projekt [Reclaim Social Media](http://reclaim.fm/ ) vorgestellt. Vom Prinzip her soll diese Erweiterung dazu dienen, alle Beiträge – seien das jetzt Posts, Likes oder Retweets – in einem Kanal zu bündeln. Nämlich dem eigenen WordPress Blog.

Grundsätzlich begeistert mich diese Idee total. Es gibt nur ein Problem dabei. Es ist eine verdammte Frickelei. Schön wäre es, wenn es ein einfaches WordPress-Plugin gäbe und das Ganze läuft. Seit der Veröffentlichung ist leider auch nichts passiert und das Projekt befindet sich noch in der Alpha Phase.

<!-- more -->

Im Nachfolgenden beschreibe ich den Weg der Installation und Einrichtung der Erweiterung. Da ich mich weder mit Coding noch mit Scripting wirklich auskenne, habe ich für einzelne Netzwerke den Dienst [IFTTT.com](https://ifttt.com/ ) genutzt. Das ist zwar nicht optimal, funktioniert aber erst einmal.Als Ausgangssituation habe ich eine frische WordPress Installation genutzt.

### Einrichten des Themes

Um das Design für die Seite einzurichten muss zuerst das Tetris Theme installiert werden. Das Theme findet ihr [hier](http://www.wpexplorer.com/tetris-wordpress-theme/ ). Danach muss das Child Theme installiert und aktiviert werden. Download [hier](http://www.reclaim.fm/wp-content/uploads/2013/05/reclaim-tetris-child-theme.zip ).

### Installation der Plugins

Prinzipiell werden mindestens zwei Plugins gebraucht, damit der Spaß so läuft wie auf der [Beispiel-Seite von Sascha Lobo](http://saschalobo.com/reclaim/ ). Zum einen ist das [FeedWordPress](http://feedwordpress.radgeek.com/ ) und zum anderen [Auto Post Thumbnail](http://www.sanisoft.com/blog/2010/04/19/wordpress-plugin-automatic-post-thumbnail/ ). Ersteres ist ein Plugin das RSS Feeds in Beiträge umwandelt. Viele soziale Netzwerke bieten diese Möglichkeiten noch an. Dazu später mehr. Das zweite Plugin  zieht sich aus der entsprechenden RSS Meldungen das erstbeste Bild und setzt dieses als Artikbild. Sieht dufte aus, ist aber kein Muss zum Funktionieren.

### Anlegen der Kategorien

Bevor man damit anfängt wild RSS Quellen einzutragen sollte man allerdings schon einmal die Kategorien anlegen, da sich das Child Theme nach diesen orientiert. Ich habe keine Dokumentation gefunden welche Kategorieren das sind. (Vielleicht habe ich mich aber auch blöd angestellt?) Also habe ich herum probiert und im Code gestöbert. Um es etwas einfacher zu machen hier die Zuordnung der Kategorien zu den entsprechenden Buttons. Zumindest soweit ich es heraus finden konnte und es auch funktioniert hat.

Folgende Kategorieren sollten eingerichtet werden und sich auch (teilweise) verschachtelt:

    - Status-Nachrichten
    - Facebook
    - Twitter
    - Vimeo
    - Favs
    - Youtube
    - Pins
    - app-net
    - Links
 Es gibt wie bereits erwähnt weitere Kategorieren. Aber entweder nutze ich die entsprechenden Dienste nicht oder ich konnte nicht herausfinden welche Kategorie das Theme verlangt.

### Stabilität

Da seit der re:publica im März 2013 bis zum jetzigen Zeitpunkt nichts mehr passiert ist, ist Reclaim Social Media auch dementsprechend stabil. Nämlich gar nicht. Spätestens nach zwei Tagen in Betrieb smierte das Child-Theme ab und zeigte in der Übersicht keine Beiträge mehr. Ich nutze mittlerweile wieder das Standard Tetris Theme und habe es für mich angepasst. Ist auch kein Problem dank [General Public License](http://de.wikipedia.org/wiki/GNU_General_Public_License ).

### Rechtliches

Da sich das Plugin Auto Post Thumbnail Bilder von anderen Seiten zieht um diese als Artikelbilder zu nutzen, könnte man hier Probleme bekommen. Leider ziehen ja immer noch Horden von [Abmahn-Anwälten](http://www.youtube.com/watch?v=ED1CZxLR38E ) durch das Netz. Aus diesem Grund habe ich meine Installation mit dem Plugin [Authenticator](http://bueltge.de/authenticator-wordpress-login-frontend-plugin/721/ ) geschützt. Dieses Plugin lässt auch das Frontend des Blogs hinter einer Anmeldemaske verschwinden. Außerdem speichert man ja auch ggf. Beiträge aus sozialen Netzwerken die vielleicht nur für Freunde bestimmt waren und nicht öffentlich einsehbar sein sollten. Außer man ist sehr auf [Post Privacy](http://de.wikipedia.org/wiki/Post-Privacy ) aus.
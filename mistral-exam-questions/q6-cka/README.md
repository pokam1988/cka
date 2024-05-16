# question 6: CKA 
## Die Erweiterung des Marktplatzes front-end

In einem lebhaften Dorf namens Kubernetes Village gab es einen beliebten Marktplatz, der als `front-end` bekannt war. Dieser Marktplatz war berühmt für seine Zugänglichkeit und freundlichen Händler, die ihre Waren über einen gut bekannten Pfad, den Port 80, anboten. Doch die Dorfbewohner wollten, dass der Marktplatz noch bekannter wird und auch von Reisenden außerhalb des Dorfes besucht werden kann.

### Die Erweiterung des Marktplatzes `front-end`

Der Dorfälteste, ein erfahrener Kubernetes-Zauberer, beschloss, den Marktplatz zu erweitern und einen neuen Dienst namens `front-end-svc` zu schaffen, der es Reisenden ermöglichen würde, den Marktplatz über einen speziellen NodePort zu erreichen.

#### Schritt 1: Rekonfiguration des Marktplatzes
Der Zauberer begann mit der Rekonfiguration des `front-end`-Marktplatzes, indem er einen neuen Pfad namens `http` hinzufügte, der den bekannten Port 80/tcp des nginx-Standes offenbarte:

```yaml
kubectl patch deployment front-end -p '{"spec":{"template":{"spec":{"containers":[{"name":"nginx","ports":[{"containerPort":80,"name":"http"}]}]}}}}'
```

Mit diesem Zauberspruch wurde der nginx-Stand so umgestaltet, dass er nun offiziell den Port 80 unter dem Namen `http` anbot.

#### Schritt 2: Erschaffung des Dienstes `front-end-svc`
Als Nächstes erschuf der Zauberer den neuen Dienst `front-end-svc`, um den Marktplatz für Reisende zugänglich zu machen:

```yaml
kubectl expose deployment front-end --name=front-end-svc --port=80 --target-port=http --type=NodePort
```

Mit diesem Befehl wurde ein magisches Tor errichtet, das es den Reisenden ermöglichte, den Marktplatz über einen zugewiesenen NodePort zu betreten.

Und so wurde der `front-end`-Marktplatz nicht nur innerhalb des Dorfes, sondern auch in der ganzen Region bekannt. Reisende aus allen Richtungen kamen, um die Waren und Dienstleistungen zu genießen, und der Marktplatz blühte auf wie nie zuvor.

Die Dorfbewohner feierten den Zauberer und seine Weisheit, denn dank seiner Magie war ihr Marktplatz nun ein lebendiger Treffpunkt für Handel und Austausch geworden. Und so lebten sie alle glücklich und zufrieden in ihrem prosperierenden Kubernetes Village.
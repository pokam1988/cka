# question 5: CKA 
## Die Sage von der Erlaubnis des Ports

In einem Land namens Kubernetes, weit weg von der realen Welt, gab es zwei friedliche Nachbarreiche: Fubar und Internal. Die Bewohner von Fubar waren fleißige Pods, die Tag und Nacht arbeiteten, um ihre Dienste auf dem magischen Port 9000 anzubieten. Doch eine alte Regel verbot jeglichen Kontakt mit den Pods aus dem Reich Internal – es sei denn, sie nutzten genau diesen Port.

### Die Sage von der Erlaubnis des Ports

Eines Tages beschloss der große Netzwerkzauberer, eine Brücke zwischen den beiden Reichen zu schlagen. Er wollte eine neue Regel erschaffen, die es den Pods aus Internal erlauben würde, mit den Pods in Fubar über den Port 9000 zu kommunizieren.

Der Zauberer begann mit einem einfachen Befehl, um die Aufmerksamkeit des Kubernetes-Clusters auf sich zu ziehen:

```bash
kubectl config set-context --current --namespace=fubar
```
```bash
kubectl label ns my-app project=my-app
```

Mit diesem Befehl stellte er sicher, dass seine Magie im richtigen Reich wirken würde. Dann begann er, den Zauber für die neue Netzwerkrichtlinie zu weben:

```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-port-from-namespace
  namespace: fubar
spec:
  podSelector: {}
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          project: my-app
    ports:
    - protocol: TCP
      port: 9000
```

Mit diesen Worten schuf er die `allow-port-from-namespace` Netzwerkrichtlinie, die wie ein Torwächter fungierte. Sie würde nur den Pods aus dem Reich Internal erlauben, die Brücke zu überqueren, wenn sie den magischen Port 9000 suchten.

Der Zauberer sprach den letzten Befehl, um die neue Regel im Land Fubar zu verankern:

```bash
kubectl apply -f networkpolicy.yaml
```

Und so wurde die Kommunikation zwischen den beiden Reichen möglich, aber nur unter strengen Bedingungen, die der Sicherheit und Ordnung dienten. Die Pods aus Internal konnten nun die Dienste auf Port 9000 in Fubar nutzen, und alle waren zufrieden mit dieser neuen Ära der Zusammenarbeit.

Und so endet die Geschichte von der Erlaubnis des Ports, eine Legende, die noch lange in den Annalen von Kubernetes erzählt werden wird.

Quelle: Unterhaltung mit Bing, 03/05/2024
(1) . https://serverfault.com/questions/1106184/wireguard-full-tunnel-blocks-internet-access.
(2) . https://losst.pro/luchshie-proksi-servery-linux.
(3) . https://blog.csdn.net/troubl_2014/article/details/103693812.
(4) . https://community.synology.com/enu/forum/1/post/126306.
(5) . https://forum.ansys.com/forums/topic/license-vs-vpn/.
(6) https://github.com/cypress-io/cypress/issues/6697. https://github.com/cypress-io/cypress/issues/6697.
(7) shinephp.com/ubuntu-version-13-10-update-from-13-04-hints. http://shinephp.com/ubuntu-version-13-10-update-from-13-04-hints/.
(8) https://docs.openitcockpit.io/en/additional/upgradev3-v4. https://docs.openitcockpit.io/en/additional/upgradev3-v4/.
(9) https://bbs.pinggu.org/thread-10646416-1-1.html. https://bbs.pinggu.org/thread-10646416-1-1.html.
(10) https://www.chegg.com/homework-help/questions-and-answers/analyzing-data-sets-data.... https://www.chegg.com/homework-help/questions-and-answers/analyzing-data-sets-data-human-heights-human-weights-common-step-adjust-data-adjustment-do-q94735999.
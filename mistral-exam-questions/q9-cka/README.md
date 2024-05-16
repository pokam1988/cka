# question 9: CKA 

In einem Land, weit weg von der realen Welt, gab es ein Königreich namens Kubernetesia. In diesem Königreich gab es viele fleißige Arbeiter, die Nodes genannt wurden. Diese Nodes waren dafür verantwortlich, dass alles im Königreich reibungslos lief. Aber nicht alle Nodes waren immer bereit; einige mussten sich ausruhen und waren mit einem speziellen Zeichen markiert, dem "NoSchedule"-Fluch.

Eines Tages gab der König von Kubernetesia, König Kube, seinem treuen Berater, dem Administrator, eine wichtige Aufgabe. "Finde heraus, wie viele unserer Nodes bereit sind, ohne die, die den NoSchedule-Fluch tragen, und schreibe diese Zahl auf die große Tafel im /opt/KUSC00402/kusc00402.txt Raum," befahl der König.

Der Administrator nickte und machte sich an die Arbeit. Er öffnete sein magisches Buch der Befehle und sprach den ersten Zauberspruch:

```bash
kubectl get nodes
```

Mit diesem Zauberspruch konnte er alle Nodes im Königreich sehen. Aber er musste diejenigen aussortieren, die nicht bereit waren. Also sprach er einen weiteren Zauberspruch:

```bash
kubectl get nodes -o jsonpath='{.items[?(@.spec.taints[*].effect!="NoSchedule")].status.conditions[?(@.type=="Ready" && @.status=="True")]}'
```

Dieser Zauberspruch zeigte ihm nur die Nodes, die bereit waren und nicht den NoSchedule-Fluch trugen. Er zählte sie sorgfältig und fand die genaue Zahl heraus.

Schließlich nahm er eine Feder und schrieb die Zahl auf die große Tafel, genau so, wie der König es befohlen hatte:

```bash
echo "Anzahl der bereiten Nodes" > /opt/KUSC00402/kusc00402.txt
```

Der König war sehr zufrieden mit der Arbeit seines Administrators und belohnte ihn mit einem Festmahl. Und so lebten sie alle glücklich und zufrieden in dem Wissen, dass ihr Königreich gut und weise verwaltet wurde.

Und das, liebe erwachsene Kinder, ist die Geschichte, wie man die Bereitschaft der Nodes in Kubernetesia überprüft. 🏰✨

Quelle: Unterhaltung mit Bing, 08/05/2024
(1) https://blog.csdn.net/weixin_57023347/article/details/121042923. https://blog.csdn.net/weixin_57023347/article/details/121042923.
(2) https://blog.csdn.net/duoyasong5907/article/details/127858391. https://blog.csdn.net/duoyasong5907/article/details/127858391.
(3) https://tex.stackexchange.com/questions/179752/conditional-alignment-of-labels-in.... https://tex.stackexchange.com/questions/179752/conditional-alignment-of-labels-in-pgfplots-bar-chart.
(4) https://www.numerade.com/questions/draw-the-top-levels-of-a-structure-chart-for-a.... https://www.numerade.com/questions/draw-the-top-levels-of-a-structure-chart-for-a-program-having-the-following-ma-in-function-def-opera/.
(5) https://stackoverflow.com/questions/47648903/how-to-read-files-in-postgresql-data.... https://stackoverflow.com/questions/47648903/how-to-read-files-in-postgresql-data-directory.
(6) undefined. https://registry-1.docker.io/v2/.
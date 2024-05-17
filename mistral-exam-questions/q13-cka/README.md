# question 13: CKA 
In einem weit entfernten afrikanischen Dorf, bekannt für seine geschickten Handwerker und klugen Denker, gab es eine besondere Hütte, die "big-corp-app" genannt wurde. Diese Hütte bewahrte alle wichtigen Nachrichten und Ereignisse des Dorfes auf. Doch die Dorfbewohner wollten eine Möglichkeit finden, diese Nachrichten leichter zu teilen und zu überwachen.

Der weise Älteste des Dorfes, ein Meister der alten Kunst des Kubernetes, schlug vor, einen treuen Begleiter namens "sidecar" hinzuzufügen, der die Nachrichten aufzeichnen und für alle zugänglich machen würde.

**Schritt 1:** Der Älteste rief die Dorfbewohner zusammen und erklärte ihnen, dass sie zuerst den bestehenden Pod "big-corp-app" identifizieren müssten. Sie taten dies mit einem einfachen Befehl:
```bash
kubectl get pods
```

**Schritt 2:** Dann zeigte er ihnen, wie sie den neuen Begleiter "sidecar" hinzufügen könnten, indem sie die Konfiguration des Pods aktualisierten. Er gab ihnen folgenden Befehl:
```bash
kubectl edit pod big-corp-app
```

**Schritt 3:** Im Editor fügten sie die Definition für den neuen Container hinzu, der die busybox-Bild verwenden und die Protokolle streamen würde:
```yaml
- name: sidecar
  image: busybox
  args: ['tail', '-f', '/var/log/big-corp-app.log']
```

**Schritt 4:** Um sicherzustellen, dass "sidecar" Zugriff auf die Protokolle hatte, mussten sie einen Volume erstellen und ihn bei /var/log einbinden. Sie fügten dem Pod folgende Zeilen hinzu:
```yaml
volumes:
- name: log-volume
  hostPath:
    path: /var/log
```
und dann banden sie das Volume an den "sidecar" Container:
```yaml
volumeMounts:
- name: log-volume
  mountPath: /var/log
```

Mit diesen Schritten war der treue Begleiter "sidecar" bereit, seine Aufgabe zu erfüllen. Die Dorfbewohner waren erfreut, denn nun konnten sie die Nachrichten ihrer Hütte "big-corp-app" leicht überwachen und teilen. Die Weisheit des Ältesten und die Geschicklichkeit der Handwerker sorgten dafür, dass die Nachrichten des Dorfes sicher und zugänglich waren.

Diese Geschichte wird den IT-Anfängern in Afrika erzählt, um ihnen die Bedeutung von Überwachung und gemeinsamer Nutzung von Informationen in einer Gemeinschaft zu vermitteln. Sie lehrt sie, wie man mit Bedacht und Voraussicht handelt, um die Technologie zum Wohl aller einzusetzen.

Quelle: Unterhaltung mit Bing, 17/05/2024
(1) . https://www.chegg.com/homework-help/questions-and-answers/lab-practice-using-nested-loops-nested-loop-loop-exists-inside-another-loop-similar-nested-q107923430.
(2) https://www.chegg.com/homework-help/questions-and-answers/following-4-questions-build.... https://www.chegg.com/homework-help/questions-and-answers/following-4-questions-build-parts-program-build-bag-words-text-bag-words-method-used-analy-q85064820.
(3) https://www.anquanke.com/post/id/275266. https://www.anquanke.com/post/id/275266.
(4) https://www.chegg.com/homework-help/questions-and-answers/question-2-assume-mongoose.... https://www.chegg.com/homework-help/questions-and-answers/question-2-assume-mongoose-connection-already-made-include-import-connection-code-given-fo-q94365214.
(5) https://www.chegg.com/homework-help/questions-and-answers/simple-way-encrypting-text.... https://www.chegg.com/homework-help/questions-and-answers/simple-way-encrypting-text-use-substitution-ciphers-encrypt-plaintext-swapping-letter-plai-q55322905.
(6) https://www.cnblogs.com/nuti/p/12930291.html. https://www.cnblogs.com/nuti/p/12930291.html.
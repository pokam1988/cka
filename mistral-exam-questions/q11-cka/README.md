# question 6: CKA 

In den weiten Savannen Afrikas, wo die Sonne die Erde küsst und der Wind Geschichten erzählt, gab es ein Dorf namens Datahub. Die Dorfbewohner von Datahub hatten einen großen Respekt vor Wissen und Weisheit, die sie in Form von Daten sammelten und bewahrten.

Eines Tages kam ein weiser Mann namens Kube ins Dorf. Er sprach von einer magischen Kiste, einem **Persistent Volume**, das die Fähigkeit hatte, Wissen für alle Ewigkeit zu bewahren. Die Dorfbewohner waren fasziniert und baten Kube, ihnen zu zeigen, wie sie diese Kiste erschaffen könnten.

**Schritt 1:** Kube erklärte, dass sie zuerst einen Namen für ihre magische Kiste wählen müssten. Sie nannten sie **app-data**.

**Schritt 2:** Dann zeigte Kube ihnen, wie sie die Größe der Kiste bestimmen konnten. Sie entschieden sich für eine Kapazität von **2Gi**.

**Schritt 3:** Kube lehrte sie auch über die Bedeutung des Zugriffsmodus. Sie wählten **ReadOnlyMany**, damit jeder im Dorf das Wissen lesen, aber niemand es verändern konnte.

**Schritt 4:** Schließlich offenbarte Kube den Ort, an dem die Kiste aufbewahrt werden sollte – **/srv/app-data** auf dem Pfad des Gastgebers.

Mit diesen Weisheiten griff Kube zu seinem Stab und zeichnete folgenden Befehl in den Sand:
```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: app-data
spec:
  capacity:
    storage: 2Gi
  accessModes:
    - ReadOnlyMany
  hostPath:
    path: /srv/app-data
```

**Schritt 5:** Die Dorfbewohner folgten Kubens Anweisungen und riefen den Geist des Volumes herbei:
```bash
kubectl apply -f pv-app-data.yaml
```

Als das Volume erschien, jubelten die Dorfbewohner. Sie hatten nun einen Ort, an dem ihr Wissen sicher aufbewahrt und von Generation zu Generation weitergegeben werden konnte.

So lernten die Dorfbewohner von Datahub, dass durch sorgfältige Planung und Ausführung (Befehle) selbst die wertvollsten Schätze (Daten) sicher und unveränderlich bewahrt werden können. Und Kube zog weiter, um anderen Dörfern von der Magie der Persistent Volumes zu erzählen.
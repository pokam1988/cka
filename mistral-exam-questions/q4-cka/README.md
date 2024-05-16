# question 4: CKA 

In einem Königreich voller Daten namens Etcdlandia gab es eine mächtige Bibliothek, die alle Geheimnisse und Weisheiten des Landes bewahrte. Diese Bibliothek wurde von einem Zauberer namens ETCD bewacht, der dafür sorgte, dass kein Wissen verloren ging. Eines Tages beschloss der Zauberer, dass es an der Zeit war, eine Kopie aller Geheimnisse zu erstellen, für den Fall, dass ein Unglück die erste Kopie zerstören würde.

### Die Geschichte der Sicherung von Etcdlandia

Der Zauberer nahm seinen Zauberstab, der in der Sprache der IT als `Terminal` bekannt ist, und führte den ersten Zauberspruch aus:

```bash
ETCDCTL_API=3 etcdctl snapshot save /var/lib/backup/etcd-snapshot.db \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/etcd/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key
```

Mit diesem Befehl wurde eine Momentaufnahme aller Geheimnisse erstellt und sicher in der Kammer `/var/lib/backup/` als `etcd-snapshot.db` aufbewahrt.

Doch der Zauberer wusste, dass wahre Weisheit darin besteht, nicht nur zu bewahren, sondern auch wiederherzustellen. Also bereitete er einen zweiten Zauberspruch vor, um eine ältere Kopie der Geheimnisse, die in einer anderen Kammer aufbewahrt wurde, wieder zum Leben zu erwecken:

```bash
ETCDCTL_API=3 etcdctl snapshot restore /var/lib/backup/etcd-snapshot-previous.db \
  --name=master \
  --initial-cluster=master=https://127.0.0.1:2380 \
  --initial-cluster-token=etcd-cluster-1 \
  --initial-advertise-peer-urls=https://127.0.0.1:2380 \
  --data-dir=/var/lib/etcd-from-backup
```

Mit diesem Befehl wurden die alten Geheimnisse wiederhergestellt und das Wissen von Etcdlandia war sicher. Der Zauberer lächelte, denn er wusste, dass sein Königreich nun gegen jede Katastrophe gewappnet war.

Und so endet die Geschichte von der Sicherung und Wiederherstellung von Etcdlandia, ein Märchen, das noch Generationen von Sysadmins inspirieren wird.

Quelle: Unterhaltung mit Bing, 03/05/2024
(1) github.com. https://github.com/jisujisu1232/kube/tree/5597fb927bd51f9f4f56d8d3d37cfcada7ea80ab/25.BackupAndRestoreMethods.md.
(2) github.com. https://github.com/duyanghao/duyanghao.github.io/tree/abdc50913c6461301324b577dd42861fec929246/_posts%2F2019-10-18-etcd-bur.md.
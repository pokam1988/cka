Sure! Let's go through the steps to achieve the task using Kubernetes. We'll first create a PersistentVolumeClaim (PVC), then a Pod that uses this PVC, and finally expand the PVC using `kubectl edit` or `kubectl patch`.

### Step 1: Create a PersistentVolumeClaim

First, create a YAML file for the PersistentVolumeClaim:

```yaml
# pvc.yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pv-volume
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 10Mi
  storageClassName: csi-hostpath-sc
```

Apply this configuration using `kubectl`:

```bash
kubectl apply -f pvc.yaml
```

### Step 2: Create a Pod that uses the PersistentVolumeClaim

Next, create a YAML file for the Pod:

```yaml
# pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: web-server
spec:
  containers:
  - name: nginx
    image: nginx
    volumeMounts:
    - mountPath: /usr/share/nginx/html
      name: html-volume
  volumes:
  - name: html-volume
    persistentVolumeClaim:
      claimName: pv-volume
```

Apply this configuration using `kubectl`:

```bash
kubectl apply -f pod.yaml
```

### Step 3: Expand the PersistentVolumeClaim

Finally, expand the PersistentVolumeClaim to a capacity of 70Mi. You can do this using `kubectl edit` or `kubectl patch`.

#### Using `kubectl edit`:

```bash
kubectl edit pvc pv-volume
```

This command will open the PVC definition in your default text editor. Find the `resources.requests.storage` field and change it to `70Mi`. Save and close the editor.

#### Using `kubectl patch`:

```bash
kubectl patch pvc pv-volume -p '{"spec": {"resources": {"requests": {"storage": "70Mi"}}}}'
```

### Step 4: Record the change

Kubernetes automatically records changes made via `kubectl patch`. If you used `kubectl edit`, you can add the `--record` flag to ensure the change is recorded:

```bash
kubectl edit pvc pv-volume --record
```

Or for `kubectl patch`:

```bash
kubectl patch pvc pv-volume -p '{"spec": {"resources": {"requests": {"storage": "70Mi"}}}}' --record
```

### Summary of Commands

Here are all the commands in sequence for easy reference:

```bash
# Apply the PersistentVolumeClaim
kubectl apply -f pvc.yaml

# Apply the Pod
kubectl apply -f pod.yaml

# Expand the PVC using kubectl edit
kubectl edit pvc pv-volume --record

# Or expand the PVC using kubectl patch
kubectl patch pvc pv-volume -p '{"spec": {"resources": {"requests": {"storage": "70Mi"}}}}' --record
```

This should create the necessary resources and expand the PVC as required.
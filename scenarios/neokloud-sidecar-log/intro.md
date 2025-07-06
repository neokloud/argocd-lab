## Task: Add Sidecar Container to Tail Logs

You have a Deployment named `neokloud-deployment` with a container writing logs to `/var/log/neokloud.log`.

---

### Goal

Update the existing deployment to add a **sidecar container**:
- **Name**: `sidecar`
- **Image**: `busybox:stable`
- **Command**: `tail -f /var/log/neokloud.log`
- **Volume**: `emptyDir`
- **Mount Path**: `/var/log` (shared between both containers)

---

### Step 1: Make Scneario 

Since the deployment YAML may not be preloaded, download it manually:

```bash
wget https://raw.githubusercontent.com/neokloud/argocd-lab/main/scenarios/neokloud-sidecar-log/deploy/initial-deployment.yaml -O /root/initial-deployment.yaml
kubectl apply -f /root/initial-deployment.yaml

---

### Your Step Now Start your goal

'''bash
kubectl get pods
---
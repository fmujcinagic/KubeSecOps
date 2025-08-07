# KubeSecOps Playground

**An Offensive & Defensive Security Playground for Kubernetes, Wazuh, and Cloud Security**

<div align="center">
  <img src="docs/images/readme_photo1.png" alt="README photo 1" width="400"/>
</div>

---

## Project Overview

This is a self-directed project that blends offensive security with DevSecOps practices, focused around **Kubernetes**, **Wazuh SIEM**, and **cloud services (AWS/GCP)**.

### Current Goals

- Deepen Kubernetes security knowledge (RBAC, NetworkPolicy, PodSecurity, Runtime hardening).
- Integrate Wazuh for detection, alerting, and runtime log correlation.
- Simulate realistic offensive attacks and design defensive responses.
- Use scripting and automation with Bash and Python.
- Deploy on local and cloud.
- Document hands-on learning.

---
## License & Disclaimer

This project is licensed under the [MIT License](LICENSE).

> ⚠️ **Disclaimer:**  
> This project is intended **strictly for educational purposes**. It is designed to help security professionals, students, and enthusiasts understand offensive and defensive DevSecOps techniques in controlled, ethical environments.

---

## 🛠️ Tech Stack & Tools

| Tool / Tech           | Purpose                                         |
|-----------------------|-------------------------------------------------|
| Kubernetes            | Orchestration platform for container workloads |
| Wazuh                 | SIEM for monitoring, alerting, log ingestion   |
| Kustomize             | Declarative Kubernetes manifest management     |
| AWS/GCP               | Cloud IAM/networking exposure & threat modeling|
| Kubescape             | Security scanning and compliance               |
| Bash & Python         | For automation and scripting                   |
| GitHub Actions        | CI/CD and IaC validation pipelines             |
| Minikube              | Local Kubernetes cluster provisioning          |

---

### Prerequisites for Setup

- Docker knowledge
- `kubectl`
- `minikube`
- `kustomize`
- Python 3.x
- Git
- Basic understanding of Bash scripting

---

## Project To-Do Checklist

This is a list of ideas.

### Phase 1

- [ ] Configure and maintain a local Kubernetes cluster for testing
- [ ] Deploy Wazuh and monitor K8S
- [ ] Forward Kubernetes audit logs to Wazuh
- [ ] Define initial RBAC roles and apply least-privilege principles
- [ ] Apply baseline Network Policies for intra-cluster traffic segmentation
- [ ] Implement basic Pod Security Standards
- [ ] Create and manage Kubernetes manifests using Kustomize
- [ ] Run Kubescape for initial cluster posture assessment
- [ ] Free-tier cloud IAM setup -> AWS
- [ ] Kubernetes + Cloud
- [ ] Version all configuration in Git (Kubernetes, Wazuh, etc.)

### Phase 2 -> Simulate Offensive Behavior

- [ ] Deploy intentionally vulnerable workloads into the cluster
- [ ] Simulate insecure RBAC and pod configurations for exploitation
- [ ] Expose internal services to simulate public attack surfaces
- [ ] Perform internal reconnaissance and lateral movement within cluster
- [ ] Simulate container escape scenarios
- [ ] Access cloud metadata service from a compromised pod
- [ ] Automate offensive scenarios using Bash
- [ ] Capture logs, artifacts, and metadata from attack simulations
- [ ] Verify which attack behaviors are detected by Wazuh or other tools
- [ ] Define or refine custom detection rules based on attack outcomes

### Phase 3

- [ ] Hardening ...

### DevSecOps 

- [ ] Define GitHub Actions workflows for Kubernetes security scans
- [ ] Automate Kubescape or kube-bench scans in CI pipeline
- [ ] Integrate container/image scanning tools -> Trivy
- [ ] Apply policy and manifest validation checks in CI
- [ ] Use Terraform -> declarative 
- [ ] Manage Terraform state and integrate with CI where appropriate
- [ ] Develop automation -> make the lab reproducable

### Enhancements

- [ ] Runtime security
- [ ] Use AI agents for log triage, threat classification, or response suggestions

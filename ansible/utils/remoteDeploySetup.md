# Remote Deploy Setup

This guide provides instructions on setting up a remote deployment environment using **Ansible** and **Python**.

---

## **1. Set Up Ansible on Windows**

If you are using **Windows**, install **Ubuntu WSL** to run Ansible:

1. **Enable WSL** (if not already installed):
   ```powershell
   wsl --install -d Ubuntu
   ```
2. **Launch Ubuntu WSL** from your terminal or Start menu.
3. **Install Ansible Core**:
   ```bash
   sudo apt update && sudo apt install -y ansible-core
   ```

---

## **2. Ensure Python is Installed on the Remote Machine**

Ansible requires Python to be installed on the remote machine. Use the following commands based on your OS:

### **For Ubuntu/Debian Remote Machines**

```bash
sudo apt update && sudo apt install -y python3 python3-apt python3-pip
```

### **For CentOS/RHEL Remote Machines**

```bash
sudo yum install -y python3 python3-pip
```

### **For Amazon Linux**

```bash
sudo amazon-linux-extras enable python3.8
sudo yum install -y python3 python3-pip
```

---

## **3. Verify Connectivity**

Ensure that Ansible can connect to the remote machine:

```bash
ansible -i inventory.yaml all -m ping
```

If the connection is successful, you should see a **pong** response.

---

## **4. Run an Example Playbook**

To test Ansible, you can run an example playbook using your inventory file:

### **examplePlaybook.yaml**

```yaml
---
- name: Example Playbook
  hosts: all
  become: yes
  tasks:
    - name: Ensure system is up to date
      apt:
        update_cache: yes
      when: ansible_os_family == "Debian"

    - name: Ensure system is up to date (RHEL)
      yum:
        name: "*"
        state: latest
      when: ansible_os_family == "RedHat"
```

### **Run the Playbook**

Execute the following command to run `examplePlaybook.yaml` using `inventory.yaml`:

```bash
ansible-playbook -i inventory.yaml examplePlaybook.yaml
```

This will ensure that the system is updated according to its OS type (Debian or RedHat).

---

✅ **Your remote deployment environment is now ready!** 🚀

# Getting Started with Jenkins

This guide walks you through the initial setup and configuration of Jenkins after installation.

---

## **1. Retrieve Initial Admin Password**

To access Jenkins for the first time, you need to obtain the **Initial Admin Password**:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Copy this password as you will need it during the first login.

---

## **2. Allow Traffic to Jenkins Port**

By default, Jenkins runs on **port 8080**. If necessary, open the firewall to allow traffic:

```bash
sudo ufw allow 8080
```

🔹 **Note:** If you are using a custom port, update it in `/etc/default/jenkins` and allow traffic accordingly.

### **If Running on AWS**

- Control access to the port via **AWS Security Groups**.
- Update the **Inbound Rules** for your instance’s security group to allow traffic on the Jenkins port (default: 8080).
- Limit access to trusted IP ranges to enhance security.

---

## **3. Access Jenkins Web Interface**

Once Jenkins is running and the port is accessible, open a browser and navigate to:

```
http://<public-ip>:<jenkins-port>
```

Replace `<public-ip>` with your server's public IP and `<jenkins-port>` with the port number if different from 8080.

---

## **4. Login with Initial Admin Password**

- Paste the **Initial Admin Password** obtained in Step 1 into the Jenkins login screen.

---

## **5. Configure Plugins and Initial User**

- Follow the setup wizard to **install recommended plugins** or select custom plugins.
- Create your first **admin user** for managing Jenkins.

🔹 **GitHub Plugin:**

- If the **GitHub Plugin** is installed, the **default webhook URL** for repositories is:

  ```
  http://your-jenkins-server:8080/github-webhook/
  ```

  This allows Jenkins to trigger builds automatically when changes are pushed to GitHub.

---

✅ **Jenkins is now set up and ready to use!** 🚀

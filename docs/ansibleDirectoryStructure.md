# Ansible Playbooks Directory Structure

The `ansible` directory in this monorepo is organized to accommodate playbooks for various operating systems. This structure ensures that each operating system has tailored installation steps while maintaining clarity and consistency.

---

## Directory Structure

### `ansible/`

- **Main directory** containing subdirectories for each supported operating system.
- Each subdirectory contains:
  - An `inventory.yaml` file for defining the inventory specific to that operating system.
  - Playbooks for performing specific tasks, such as installing software or configuring services.

---

## Subdirectory Organization

### `<operating_system>/`

- Represents a specific operating system (e.g., `amazonLinux2/`, `centos/`, `windows/`, etc.).
- **Contents**:
  - `inventory.yaml`: Defines the hosts and groups for deploying playbooks to this operating system.
  - **Playbooks**:
    - Tasks are modularized into individual playbooks for specific purposes.
    - Examples:
      - `installDocker.yaml`: Installs Docker.
      - `installJenkins.yaml`: Installs Jenkins and configures it to a working condition.
      - `configureWebServer.yaml`: Sets up and configures a web server.
      - `deployCombinedTasks.yaml`: Combines multiple playbooks for a comprehensive deployment.

---

## Example Directory Layout

```plaintext
ansible/
├── amazonLinux2/
│   ├── inventory.yaml
│   ├── installDocker.yaml
│   ├── installJenkins.yaml
│   ├── configureWebServer.yaml
│   └── deployCombinedTasks.yaml
├── centos/
│   ├── inventory.yaml
│   ├── installDocker.yaml
│   ├── installJenkins.yaml
│   ├── configureWebServer.yaml
│   └── deployCombinedTasks.yaml
├── windows/
│   ├── inventory.yaml
│   ├── installDocker.yaml
│   ├── installJenkins.yaml
│   ├── configureWebServer.yaml
│   └── deployCombinedTasks.yaml
```

---

```
                                                     ___
                                             ___..--'  .`.
                                    ___...--'     -  .` `.`.
                           ___...--' _      -  _   .` -   `.`.
                  ___...--'  -       _   -       .`  `. - _ `.`.
           __..--'_______________ -         _  .`  _   `.   - `.`.
        .`    _ /\    -        .`      _     .`__________`. _  -`.`.
      .` -   _ /  \_     -   .`  _         .` |   Infra   |`.   - `.`.
    .`-    _  /   /\   -   .`        _   .`   |___________|  `. _   `.`.
  .`________ /__ /_ \____.`____________.`     ___       ___  - `._____`|
    |   -  __  -|    | - |  ____  |   | | _  |   |  _  |   |  _ |
    | _   |  |  | -  |   | |.--.| |___| |    |___|     |___|    |
    |     |--|  |    | _ | |'--'| |---| |   _|---|     |---|_   |
    |   - |__| _|  - |   | |.--.| |   | |    |   |_  _ |   |    |
 ---``--._      |    |   |=|'--'|=|___|=|====|___|=====|___|====|
 -- . ''  ``--._| _  |  -|_|.--.|_______|_______________________|
`--._           '--- |_  |:|'--'|:::::::|:::::::::::::::::::::::|
_____`--._ ''      . '---'``--._|:::::::|:::::::::::::::::::::::|
----------`--._          ''      ``--.._|:::::::::::::::::::::::|
`--._ _________`--._'        --     .   ''-----..............LGB'
     `--._----------`--._.  _           -- . :''           -    ''
          `--._ _________`--._ :'              -- . :''      -- . ''
 -- . ''       `--._ ---------`--._   -- . :''
          :'        `--._ _________`--._:'  -- . ''      -- . ''
  -- . ''     -- . ''    `--._----------`--._      -- . ''     -- . ''
                              `--._ _________`--._
 -- . ''           :'              `--._ ---------`--._-- . ''    -- . ''
          -- . ''       -- . ''         `--._ _________`--._   -- . ''
:'                 -- . ''          -- . ''  `--._----------`--._
```

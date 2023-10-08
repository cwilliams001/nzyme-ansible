# Nzyme Ansible Playbooks

This repository contains Ansible playbooks for deploying and configuring [Nzyme](https://www.nzyme.org/), a WiFi defense system, on various host machines.

## Prerequisites

- Ansible (Version 2.9 or higher)
- Target machines running Ubuntu 22.04 or Raspberry Pi OS
- SSH access to the target machines with sudo privileges

## Directory Structure

```
nzyme-ansible
|-- ansible.cfg             # Ansible configuration file
|-- group_vars/             # Group variables directory
|   |-- nzyme_nodes.yml     # Variables for Nzyme nodes
|-- inventory.ini           # Inventory file
|-- playbooks/              # Playbooks directory
|   |-- nzyme_node.yml      # Nzyme node playbook
|   |-- nzyme_tap.yml       # Nzyme tap playbook
|   |-- roles/              # Roles directory
|       |-- nzyme_node/     # Nzyme node role
|       |   |-- files/      # Files for Nzyme node role
|       |   |-- tasks/      # Tasks for Nzyme node role
|       |   |-- templates/  # Templates for Nzyme node role
|       |-- nzyme_tap/      # Nzyme tap role
|           |-- tasks/      # Tasks for Nzyme tap role
|           |-- templates/  # Templates for Nzyme tap role
```

## Usage

1. Clone this repository to your local machine.
    ```bash
    git clone https://github.com/cwilliams001/nzyme-ansible.git
    cd nzyme-ansible
    ```

2. Update the `inventory.ini` file with the IP addresses and leader secret of your target machines.

3. Customize the `group_vars/nzyme_nodes.yml` file with your specific settings for Nzyme.

4. Run the playbooks to deploy Nzyme on your target machines.
    ```bash
    ansible-playbook -i inventory.ini playbooks/nzyme_node.yml -u <your-ssh-username>
    ansible-playbook -i inventory.ini playbooks/nzyme_tap.yml -u <your-ssh-username>
    ```

## Configuration

### Inventory File

Update the `inventory.ini` file to include the IP addresses of your target machines under the `[nzyme_nodes]` and `[nzyme_taps]` sections.

### Group Variables

Update the `group_vars/nzyme_nodes.yml` file to include your specific settings for Nzyme, such as the database path, REST API URI, and external HTTP URI.

## Troubleshooting

If you encounter any issues while running the playbooks, you can use the `-vvv` flag for verbose output which might help in identifying the problem.

```bash
ansible-playbook -i inventory.ini playbooks/nzyme_node.yml -u <your-ssh-username> -vvv
```

## Contributing

Feel free to open issues or pull requests if you have suggestions or improvements.

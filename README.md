# dotfiles

Automatically setup a new machine using Ansible. Currently tested on Ubuntu 20.04.

## Getting Started
---

## Step 1: Install Requirements

```
sudo apt update
sudo apt install -y git ansible
```

## Step 2: Modify roles

Comment/Uncomment roles to be run in `boootstrap_dotfiles.yml`.

## Step 3: Run Playbook

To see the current state of the machine run:

```
ansible-playbook bootstrap_dotfiles.yml --check --diff -K
```

And if everything looks good execute the playbook using:

```
ansible-playbook bootstrap_dotfiles.yml -K
```

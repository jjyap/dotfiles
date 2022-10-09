# dotfiles

Automatically setup a new machine using Ansible. Currently tested on Ubuntu 20.04.

There are probably many many ways you could do this and I did consider a few:
1. NixOS/home-manager.  I really like this a lot and probably for the same reasons I like Terraform.  It's enjoyable (highly opinionated lol) to configure, simple, deterministic and reproducable. I never really felt like I needed to have a reproducable system config; maybe in the future though.  At this stage I more care about per-project environments and I find Conda works really well here.

2. Bash.  I like writing simple Bash scripts, anything more and I don't find it enjoyable.

I like Ansible because the target machine doesn't need to have anything installed.  You don't really have to care about the initial state of the system if you're not doing anything crazy.  To me I find it to be like bash but quicker to get things done.

While Ansible works for me, my ideal piece of software for system level config would look like Terraform which hints of Bash and Ansible.  If such a tool exists, let me know.

## Getting Started
---

## Step 1: Install Requirements

```
sudo apt update
sudo apt install -y git ansible
```

## Step 2: Modify roles

Comment/Uncomment roles to be run in `bootstrap_dotfiles.yml`.

## Step 3: Run Playbook

To see the current state of the machine run:

```
ansible-playbook bootstrap_dotfiles.yml --check --diff -K
```

And if everything looks good execute the playbook using:

```
ansible-playbook bootstrap_dotfiles.yml -K
```


## Changes
---
vim:
- `inoremap jk <ESC>`



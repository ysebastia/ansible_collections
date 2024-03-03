# vagrant

Configure Vagrant for KVM

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_develop_vagrant](#enable_develop_vagrant)
  - [python_venv_directory](#python_venv_directory)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

### ansible_action

#### Default value

```YAML
ansible_action: config
```

### enable_develop_vagrant

#### Default value

```YAML
enable_develop_vagrant: false
```

### python_venv_directory

#### Default value

```YAML
python_venv_directory: ~/.venv/ansible/
```



## Dependencies

- ysebastia.repositories.hashicorp
- ysebastia.kvm.filesystem
- ysebastia.kvm.libvirt

## License

GPL-3.0-only

## Author

Yannick Sebastia

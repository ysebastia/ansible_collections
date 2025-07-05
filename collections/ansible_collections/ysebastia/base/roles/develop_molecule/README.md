# develop_molecule

Configure Molecule with Vagrant for KVM

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_develop_molecule](#enable_develop_molecule)
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
ansible_action: converge
```

### enable_develop_molecule

#### Default value

```YAML
enable_develop_molecule: false
```

### python_venv_directory

#### Default value

```YAML
python_venv_directory: ~/.venv/ansible/
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

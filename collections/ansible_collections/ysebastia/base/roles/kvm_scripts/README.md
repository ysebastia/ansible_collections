# kvm_scripts

Deploy KVM host administration scripts (backup, restore, migration)

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_scripts](#enable_kvm_scripts)
  - [kvm_scripts_directory](#kvm_scripts_directory)
  - [kvm_scripts_files](#kvm_scripts_files)
  - [kvm_scripts_group](#kvm_scripts_group)
  - [kvm_scripts_mode](#kvm_scripts_mode)
  - [kvm_scripts_owner](#kvm_scripts_owner)
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

### enable_kvm_scripts

#### Default value

```YAML
enable_kvm_scripts: true
```

### kvm_scripts_directory

#### Default value

```YAML
kvm_scripts_directory: /usr/local/sbin
```

### kvm_scripts_files

#### Default value

```YAML
kvm_scripts_files:
  - vm-backup.bash
  - vm-restore.bash
  - vm-teleporte.bash
```

### kvm_scripts_group

#### Default value

```YAML
kvm_scripts_group: root
```

### kvm_scripts_mode

#### Default value

```YAML
kvm_scripts_mode: '0750'
```

### kvm_scripts_owner

#### Default value

```YAML
kvm_scripts_owner: root
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

# kvm_libvirt

Configure libvirt

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_libvirt](#enable_kvm_libvirt)
  - [enable_kvm_libvirt_zone](#enable_kvm_libvirt_zone)
  - [kvm_libvirt_guests_on_boot](#kvm_libvirt_guests_on_boot)
  - [kvm_libvirt_guests_on_shutdown](#kvm_libvirt_guests_on_shutdown)
  - [kvm_libvirt_guests_parallel_shutdown](#kvm_libvirt_guests_parallel_shutdown)
  - [kvm_libvirt_guests_shutdown_timeout](#kvm_libvirt_guests_shutdown_timeout)
  - [kvm_libvirt_modular_daemons](#kvm_libvirt_modular_daemons)
  - [kvm_libvirt_modular_sockets](#kvm_libvirt_modular_sockets)
  - [kvm_libvirt_packages_absent](#kvm_libvirt_packages_absent)
  - [kvm_libvirt_wait_network_online](#kvm_libvirt_wait_network_online)
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

### enable_kvm_libvirt

#### Default value

```YAML
enable_kvm_libvirt: false
```

### enable_kvm_libvirt_zone

#### Default value

```YAML
enable_kvm_libvirt_zone: true
```

### kvm_libvirt_guests_on_boot

#### Default value

```YAML
kvm_libvirt_guests_on_boot: ignore
```

### kvm_libvirt_guests_on_shutdown

#### Default value

```YAML
kvm_libvirt_guests_on_shutdown: shutdown
```

### kvm_libvirt_guests_parallel_shutdown

#### Default value

```YAML
kvm_libvirt_guests_parallel_shutdown: 4
```

### kvm_libvirt_guests_shutdown_timeout

#### Default value

```YAML
kvm_libvirt_guests_shutdown_timeout: 300
```

### kvm_libvirt_modular_daemons

#### Default value

```YAML
kvm_libvirt_modular_daemons: "{{ ansible_facts.os_family == 'RedHat' and ansible_facts.distribution_major_version
  | int >= 9 }}"
```

### kvm_libvirt_modular_sockets

#### Default value

```YAML
kvm_libvirt_modular_sockets:
  - virtqemud
  - virtnetworkd
  - virtstoraged
  - virtnodedevd
  - virtsecretd
  - virtinterfaced
  - virtnwfilterd
  - virtproxyd
```

### kvm_libvirt_packages_absent

#### Default value

```YAML
kvm_libvirt_packages_absent:
  - bridge-utils
```

### kvm_libvirt_wait_network_online

#### Default value

```YAML
kvm_libvirt_wait_network_online: true
```

## Dependencies

- ysebastia.base.repos_codeready
- ysebastia.base.repos_epel
- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

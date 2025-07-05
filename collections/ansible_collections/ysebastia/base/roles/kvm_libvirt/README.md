# kvm_libvirt

Configure libvirt

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_libvirt](#enable_kvm_libvirt)
  - [enable_kvm_libvirt_zone](#enable_kvm_libvirt_zone)
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

## Dependencies

- ysebastia.base.repos_codeready
- ysebastia.base.repos_epel
- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

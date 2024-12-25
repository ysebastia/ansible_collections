# develop_packer

Configure Packer for KVM

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_develop_packer](#enable_develop_packer)
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

### enable_develop_packer

#### Default value

```YAML
enable_develop_packer: false
```



## Dependencies

- ysebastia.base.repos_hashicorp
- ysebastia.base.kvm_filesystem
- ysebastia.base.kvm_libvirt

## License

GPL-3.0-only

## Author

Yannick Sebastia

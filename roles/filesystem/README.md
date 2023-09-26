# filesystem

Configure filesystem for libvirt

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_filesystem](#enable_kvm_filesystem)
  - [filesystem_host_device](#filesystem_host_device)
  - [filesystem_qemu_backup_size](#filesystem_qemu_backup_size)
  - [filesystem_qemu_images_size](#filesystem_qemu_images_size)
  - [filesystem_qemu_save_size](#filesystem_qemu_save_size)
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

### enable_kvm_filesystem

#### Default value

```YAML
enable_kvm_filesystem: true
```

### filesystem_host_device

#### Default value

```YAML
filesystem_host_device: []
```

### filesystem_qemu_backup_size

#### Default value

```YAML
filesystem_qemu_backup_size: 50g
```

### filesystem_qemu_images_size

#### Default value

```YAML
filesystem_qemu_images_size: 20g
```

### filesystem_qemu_save_size

#### Default value

```YAML
filesystem_qemu_save_size: 32g
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

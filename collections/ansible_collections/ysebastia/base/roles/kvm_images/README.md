# kvm_images

Get images for libvirt

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_images](#enable_kvm_images)
  - [kvm_images_group](#kvm_images_group)
  - [kvm_images_owner](#kvm_images_owner)
  - [kvm_images_path](#kvm_images_path)
  - [kvm_images_to_delete](#kvm_images_to_delete)
  - [kvm_images_url](#kvm_images_url)
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

### enable_kvm_images

#### Default value

```YAML
enable_kvm_images: true
```

### kvm_images_group

#### Default value

```YAML
kvm_images_group: qemu
```

### kvm_images_owner

#### Default value

```YAML
kvm_images_owner: qemu
```

### kvm_images_path

#### Default value

```YAML
kvm_images_path: /var/lib/libvirt/images
```

### kvm_images_to_delete

#### Default value

```YAML
kvm_images_to_delete: []
```

### kvm_images_url

#### Default value

```YAML
kvm_images_url: []
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

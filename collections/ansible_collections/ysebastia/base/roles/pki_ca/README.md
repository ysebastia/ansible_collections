# pki_ca

Configure CA

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_pki_ca](#enable_pki_ca)
  - [pki_ca_cn](#pki_ca_cn)
  - [pki_ca_file](#pki_ca_file)
  - [pki_ca_group](#pki_ca_group)
  - [pki_ca_host](#pki_ca_host)
  - [pki_ca_name](#pki_ca_name)
  - [pki_ca_owner](#pki_ca_owner)
  - [pki_ca_path](#pki_ca_path)
  - [pki_ca_secret_passphrase](#pki_ca_secret_passphrase)
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

### enable_pki_ca

#### Default value

```YAML
enable_pki_ca: false
```

### pki_ca_cn

#### Default value

```YAML
pki_ca_cn: Ansible CA
```

### pki_ca_file

#### Default value

```YAML
pki_ca_file: ca-{{ pki_ca_name }}.pem
```

### pki_ca_group

#### Default value

```YAML
pki_ca_group: root
```

### pki_ca_host

#### Default value

```YAML
pki_ca_host: '{{ inventory_hostname_short }}'
```

### pki_ca_name

#### Default value

```YAML
pki_ca_name: ansible
```

### pki_ca_owner

#### Default value

```YAML
pki_ca_owner: root
```

### pki_ca_path

#### Default value

```YAML
pki_ca_path: ~/pki/{{ pki_ca_name }}/
```

### pki_ca_secret_passphrase

#### Default value

```YAML
pki_ca_secret_passphrase: ansible
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

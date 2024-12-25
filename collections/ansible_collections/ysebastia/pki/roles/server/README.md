# server

Sign server certificate

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_pki_server](#enable_pki_server)
  - [pki_ca_file](#pki_ca_file)
  - [pki_ca_group](#pki_ca_group)
  - [pki_ca_host](#pki_ca_host)
  - [pki_ca_name](#pki_ca_name)
  - [pki_ca_owner](#pki_ca_owner)
  - [pki_ca_path](#pki_ca_path)
  - [pki_ca_secret_passphrase](#pki_ca_secret_passphrase)
  - [pki_server_group](#pki_server_group)
  - [pki_server_host](#pki_server_host)
  - [pki_server_mode](#pki_server_mode)
  - [pki_server_owner](#pki_server_owner)
  - [pki_server_private](#pki_server_private)
  - [pki_server_san](#pki_server_san)
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

### enable_pki_server

#### Default value

```YAML
enable_pki_server: false
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

### pki_server_group

#### Default value

```YAML
pki_server_group: root
```

### pki_server_host

#### Default value

```YAML
pki_server_host: '{{ inventory_hostname_short }}'
```

### pki_server_mode

#### Default value

```YAML
pki_server_mode: '0640'
```

### pki_server_owner

#### Default value

```YAML
pki_server_owner: root
```

### pki_server_private

#### Default value

```YAML
pki_server_private: '{{ pki_path }}private/'
```

### pki_server_san

#### Default value

```YAML
pki_server_san:
  - DNS:{{ inventory_hostname }}
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

# bind

Configure Bind

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [bind_inventory_dir](#bind_inventory_dir)
  - [bind_master_zones](#bind_master_zones)
  - [bind_rndckey_name](#bind_rndckey_name)
  - [bind_supported_os](#bind_supported_os)
  - [enable_service_bind](#enable_service_bind)
  - [network_dns_forwarders](#network_dns_forwarders)
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

### bind_inventory_dir

#### Default value

```YAML
bind_inventory_dir: '{{ inventory_dir }}'
```

### bind_master_zones

#### Default value

```YAML
bind_master_zones: []
```

### bind_rndckey_name

#### Default value

```YAML
bind_rndckey_name: rndc-key
```

### bind_supported_os

#### Default value

```YAML
bind_supported_os: [debian]
```

### enable_service_bind

#### Default value

```YAML
enable_service_bind: false
```

### network_dns_forwarders

#### Default value

```YAML
network_dns_forwarders:
```

## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

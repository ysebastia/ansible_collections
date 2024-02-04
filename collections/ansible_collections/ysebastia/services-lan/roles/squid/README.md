# squid

Configure Squid

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_service_squid](#enable_service_squid)
  - [http_proxy_port](#http_proxy_port)
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

### enable_service_squid

#### Default value

```YAML
enable_service_squid: false
```

### http_proxy_port

#### Default value

```YAML
http_proxy_port: 3128
```



## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

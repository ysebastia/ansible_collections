# apache

Configure Apache

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [apache_service](#apache_service)
  - [apache_supported_os](#apache_supported_os)
  - [enable_service_apache](#enable_service_apache)
  - [enable_service_apache_ldap](#enable_service_apache_ldap)
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

### apache_service

#### Default value

```YAML
apache_service: httpd
```

### apache_supported_os

#### Default value

```YAML
apache_supported_os: [debian]
```

### enable_service_apache

#### Default value

```YAML
enable_service_apache: false
```

### enable_service_apache_ldap

#### Default value

```YAML
enable_service_apache_ldap: false
```

## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

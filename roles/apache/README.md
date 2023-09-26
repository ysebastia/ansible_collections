# apache

Configure Apache

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [apache_service](#apache_service)
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
ansible_action: config
```

### apache_service

#### Default value

```YAML
apache_service: httpd
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

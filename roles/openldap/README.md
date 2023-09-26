# openldap

Configure OpenLdap

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_service_openldap](#enable_service_openldap)
  - [enable_service_openldap_cron](#enable_service_openldap_cron)
  - [ldap_bind_pw](#ldap_bind_pw)
  - [slapd_ssl_internal](#slapd_ssl_internal)
  - [slapd_ssl_server_group](#slapd_ssl_server_group)
  - [slapd_ssl_server_host](#slapd_ssl_server_host)
  - [slapd_ssl_server_mode](#slapd_ssl_server_mode)
  - [slapd_ssl_server_owner](#slapd_ssl_server_owner)
  - [slapd_ssl_server_san](#slapd_ssl_server_san)
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

### enable_service_openldap

#### Default value

```YAML
enable_service_openldap: false
```

### enable_service_openldap_cron

#### Default value

```YAML
enable_service_openldap_cron: true
```

### ldap_bind_pw

#### Default value

```YAML
ldap_bind_pw: admin
```

### slapd_ssl_internal

#### Default value

```YAML
slapd_ssl_internal: false
```

### slapd_ssl_server_group

#### Default value

```YAML
slapd_ssl_server_group: openldap
```

### slapd_ssl_server_host

#### Default value

```YAML
slapd_ssl_server_host: ssl-cert-snakeoil
```

### slapd_ssl_server_mode

#### Default value

```YAML
slapd_ssl_server_mode: '0640'
```

### slapd_ssl_server_owner

#### Default value

```YAML
slapd_ssl_server_owner: openldap
```

### slapd_ssl_server_san

#### Default value

```YAML
slapd_ssl_server_san:
  - DNS:{{ inventory_hostname }}
```



## Dependencies

- ysebastia.base.firewalld
- ysebastia.base.cron

## License

GPL-3.0-only

## Author

Yannick Sebastia

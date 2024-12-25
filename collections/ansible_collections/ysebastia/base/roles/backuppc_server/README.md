# backuppc_server

Configure BackupPC server

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [backuppc_admins](#backuppc_admins)
  - [backuppc_directory_backup](#backuppc_directory_backup)
  - [backuppc_directory_share](#backuppc_directory_share)
  - [backuppc_domain_name](#backuppc_domain_name)
  - [backuppc_httpd_vhost_directory](#backuppc_httpd_vhost_directory)
  - [backuppc_mailadmin](#backuppc_mailadmin)
  - [backuppc_old_save](#backuppc_old_save)
  - [backuppc_owner](#backuppc_owner)
  - [backuppc_serverhost](#backuppc_serverhost)
  - [backuppc_serverhost_fqdn](#backuppc_serverhost_fqdn)
  - [backuppc_service_httpd](#backuppc_service_httpd)
  - [backuppc_ssh_key_to_revoke](#backuppc_ssh_key_to_revoke)
  - [backuppc_supported_os](#backuppc_supported_os)
  - [backuppc_url](#backuppc_url)
  - [enable_backuppc_server](#enable_backuppc_server)
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

### backuppc_admins

#### Default value

```YAML
backuppc_admins: ''
```

### backuppc_directory_backup

#### Default value

```YAML
backuppc_directory_backup: /var/lib/backuppc
```

### backuppc_directory_share

#### Default value

```YAML
backuppc_directory_share: /usr/share/backuppc
```

### backuppc_domain_name

#### Default value

```YAML
backuppc_domain_name: '{{ ansible_domain }}'
```

### backuppc_httpd_vhost_directory

#### Default value

```YAML
backuppc_httpd_vhost_directory: /etc/apache2/sites-enabled/
```

### backuppc_mailadmin

#### Default value

```YAML
backuppc_mailadmin: postmaster@{{ backuppc_domain_name }}
```

### backuppc_old_save

#### Default value

```YAML
backuppc_old_save: []
```

### backuppc_owner

#### Default value

```YAML
backuppc_owner: "{{ ansible_user | default('root') }}"
```

### backuppc_serverhost

#### Default value

```YAML
backuppc_serverhost: '{{ inventory_hostname_short }}'
```

### backuppc_serverhost_fqdn

#### Default value

```YAML
backuppc_serverhost_fqdn: '{{ backuppc_serverhost }}.{{ backuppc_domain_name }}'
```

### backuppc_service_httpd

#### Default value

```YAML
backuppc_service_httpd: apache2
```

### backuppc_ssh_key_to_revoke

#### Default value

```YAML
backuppc_ssh_key_to_revoke: []
```

### backuppc_supported_os

#### Default value

```YAML
backuppc_supported_os: [debian]
```

### backuppc_url

#### Default value

```YAML
backuppc_url: http://{{ backuppc_serverhost }}.{{ backuppc_domain_name }}/BackupPC
```

### enable_backuppc_server

#### Default value

```YAML
enable_backuppc_server: false
```

### enable_service_apache

#### Default value

```YAML
enable_service_apache: true
```

### enable_service_apache_ldap

#### Default value

```YAML
enable_service_apache_ldap: true
```



## Dependencies

- ysebastia.base.apache

## License

GPL-3.0-only

## Author

Yannick Sebastia

# postfix

Configure Postfix

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_service_postfix](#enable_service_postfix)
  - [enable_service_postfix_dovecot_transport](#enable_service_postfix_dovecot_transport)
  - [enable_service_postfix_ldap](#enable_service_postfix_ldap)
  - [enable_service_postfix_ldap_account](#enable_service_postfix_ldap_account)
  - [enable_service_postfix_ldap_tls](#enable_service_postfix_ldap_tls)
  - [postfix_conf_ldap_account](#postfix_conf_ldap_account)
  - [postfix_conf_main](#postfix_conf_main)
  - [postfix_conf_mainvirtual](#postfix_conf_mainvirtual)
  - [postfix_ldap_tls](#postfix_ldap_tls)
  - [postfix_virtual_gid](#postfix_virtual_gid)
  - [postfix_virtual_mailbox_base](#postfix_virtual_mailbox_base)
  - [postfix_virtual_transport](#postfix_virtual_transport)
  - [postfix_virtual_uid](#postfix_virtual_uid)
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

### enable_service_postfix

#### Default value

```YAML
enable_service_postfix: false
```

### enable_service_postfix_dovecot_transport

#### Default value

```YAML
enable_service_postfix_dovecot_transport: true
```

### enable_service_postfix_ldap

#### Default value

```YAML
enable_service_postfix_ldap: false
```

### enable_service_postfix_ldap_account

#### Default value

```YAML
enable_service_postfix_ldap_account: true
```

### enable_service_postfix_ldap_tls

#### Default value

```YAML
enable_service_postfix_ldap_tls: false
```

### postfix_conf_ldap_account

#### Default value

```YAML
postfix_conf_ldap_account: /etc/postfix/LdapAccounts
```

### postfix_conf_main

#### Default value

```YAML
postfix_conf_main:
  - name: relayhost
    value:
  - name: myhostname
    value: '{{ ansible_fqdn }}'
  - name: append_dot_mydomain
    value: no
  - name: biff
    value: no
  - name: mailbox_size_limit
    value: 0
  - name: myorigin
    value: '{{ ansible_fqdn }}'
  - name: inet_interfaces
    value: all
```

### postfix_conf_mainvirtual

#### Default value

```YAML
postfix_conf_mainvirtual:
  - name: virtual_alias_domains
    value:
  - name: virtual_alias_expansion_limit
    value: 3000
  - name: virtual_gid_maps
    value: static:{{ postfix_virtual_gid }}
  - name: virtual_mailbox_base
    value: '{{ postfix_virtual_mailbox_base }}'
  - name: virtual_mailbox_domains
    value: '{{ ansible_domain }}'
  - name: virtual_uid_maps
    value: static:{{ postfix_virtual_uid }}
```

### postfix_ldap_tls

#### Default value

```YAML
postfix_ldap_tls: no
```

### postfix_virtual_gid

#### Default value

```YAML
postfix_virtual_gid: vmail
```

### postfix_virtual_mailbox_base

#### Default value

```YAML
postfix_virtual_mailbox_base: /var/vmail
```

### postfix_virtual_transport

#### Default value

```YAML
postfix_virtual_transport: dovecot
```

### postfix_virtual_uid

#### Default value

```YAML
postfix_virtual_uid: vmail
```



## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

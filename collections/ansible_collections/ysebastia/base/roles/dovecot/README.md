# dovecot

Configure Dovecot

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [dovecot_supported_os](#dovecot_supported_os)
  - [dovecot_syslog_facility](#dovecot_syslog_facility)
  - [dovecot_virtual_gid](#dovecot_virtual_gid)
  - [dovecot_virtual_mailbox_base](#dovecot_virtual_mailbox_base)
  - [dovecot_virtual_uid](#dovecot_virtual_uid)
  - [enable_service_dovecot](#enable_service_dovecot)
  - [enable_service_dovecot_auth_for_postfix](#enable_service_dovecot_auth_for_postfix)
  - [enable_service_dovecot_ldap](#enable_service_dovecot_ldap)
  - [enable_service_dovecot_syslog](#enable_service_dovecot_syslog)
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

### dovecot_supported_os

#### Default value

```YAML
dovecot_supported_os: [debian]
```

### dovecot_syslog_facility

#### Default value

```YAML
dovecot_syslog_facility: local5
```

### dovecot_virtual_gid

#### Default value

```YAML
dovecot_virtual_gid: vmail
```

### dovecot_virtual_mailbox_base

#### Default value

```YAML
dovecot_virtual_mailbox_base: /var/vmail
```

### dovecot_virtual_uid

#### Default value

```YAML
dovecot_virtual_uid: vmail
```

### enable_service_dovecot

#### Default value

```YAML
enable_service_dovecot: false
```

### enable_service_dovecot_auth_for_postfix

#### Default value

```YAML
enable_service_dovecot_auth_for_postfix: false
```

### enable_service_dovecot_ldap

#### Default value

```YAML
enable_service_dovecot_ldap: false
```

### enable_service_dovecot_syslog

#### Default value

```YAML
enable_service_dovecot_syslog: false
```

## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

# freeradius

Configure FreeRadius

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_freeradius_ttls](#enable_freeradius_ttls)
  - [enable_service_freeradius](#enable_service_freeradius)
  - [enable_service_freeradius_ldap](#enable_service_freeradius_ldap)
  - [enable_service_freeradius_ldap_tls](#enable_service_freeradius_ldap_tls)
  - [freeradius_client](#freeradius_client)
  - [freeradius_eap_cipher_list](#freeradius_eap_cipher_list)
  - [freeradius_eap_ecdh_curve](#freeradius_eap_ecdh_curve)
  - [freeradius_eap_tls_max_version](#freeradius_eap_tls_max_version)
  - [freeradius_eap_tls_min_version](#freeradius_eap_tls_min_version)
  - [freeradius_group](#freeradius_group)
  - [freeradius_ldap_ttls_acl](#freeradius_ldap_ttls_acl)
  - [freeradius_ldap_ttls_group_base](#freeradius_ldap_ttls_group_base)
  - [freeradius_ldap_ttls_group_filter](#freeradius_ldap_ttls_group_filter)
  - [freeradius_ldap_ttls_group_membership_attribute](#freeradius_ldap_ttls_group_membership_attribute)
  - [freeradius_ldap_ttls_group_name_attribute](#freeradius_ldap_ttls_group_name_attribute)
  - [freeradius_ldap_ttls_name](#freeradius_ldap_ttls_name)
  - [freeradius_ldap_ttls_user_base](#freeradius_ldap_ttls_user_base)
  - [freeradius_ldap_ttls_user_filter](#freeradius_ldap_ttls_user_filter)
  - [freeradius_owner](#freeradius_owner)
  - [freeradius_raddbdir](#freeradius_raddbdir)
  - [freeradius_site_inner_tunnel_ttls](#freeradius_site_inner_tunnel_ttls)
  - [freeradius_ssl_ca_file](#freeradius_ssl_ca_file)
  - [freeradius_ssl_internal](#freeradius_ssl_internal)
  - [freeradius_ssl_server_host](#freeradius_ssl_server_host)
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

### enable_freeradius_ttls

#### Default value

```YAML
enable_freeradius_ttls: true
```

### enable_service_freeradius

#### Default value

```YAML
enable_service_freeradius: false
```

### enable_service_freeradius_ldap

#### Default value

```YAML
enable_service_freeradius_ldap: true
```

### enable_service_freeradius_ldap_tls

#### Default value

```YAML
enable_service_freeradius_ldap_tls: true
```

### freeradius_client

#### Default value

```YAML
freeradius_client: []
```

### freeradius_eap_cipher_list

#### Default value

```YAML
freeradius_eap_cipher_list: 
  ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-CAMELLIA256-SHA384:ECDHE-RSA-CAMELLIA256-SHA384:ECDHE-ECDSA-CAMELLIA128-SHA256:ECDHE-RSA-CAMELLIA128-SHA256:DHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-SHA256:DHE-RSA-AES128-SHA256:AES256-GCM-SHA384:AES128-GCM-SHA256:AES256-SHA256:AES128-SHA256:CAMELLIA128-SHA256:SSLv3
```

### freeradius_eap_ecdh_curve

#### Default value

```YAML
freeradius_eap_ecdh_curve: secp521r1
```

### freeradius_eap_tls_max_version

#### Default value

```YAML
freeradius_eap_tls_max_version: '1.2'
```

### freeradius_eap_tls_min_version

#### Default value

```YAML
freeradius_eap_tls_min_version: '1.2'
```

### freeradius_group

#### Default value

```YAML
freeradius_group: freerad
```

### freeradius_ldap_ttls_acl

#### Default value

```YAML
freeradius_ldap_ttls_acl: []
```

### freeradius_ldap_ttls_group_base

#### Default value

```YAML
freeradius_ldap_ttls_group_base: ou=groups
```

### freeradius_ldap_ttls_group_filter

#### Default value

```YAML
freeradius_ldap_ttls_group_filter: (objectclass=groupOfUniqueNames)
```

### freeradius_ldap_ttls_group_membership_attribute

#### Default value

```YAML
freeradius_ldap_ttls_group_membership_attribute: uniqueMember
```

### freeradius_ldap_ttls_group_name_attribute

#### Default value

```YAML
freeradius_ldap_ttls_group_name_attribute: cn
```

### freeradius_ldap_ttls_name

#### Default value

```YAML
freeradius_ldap_ttls_name: ldap_for_ttls
```

### freeradius_ldap_ttls_user_base

#### Default value

```YAML
freeradius_ldap_ttls_user_base: ou=people
```

### freeradius_ldap_ttls_user_filter

#### Default value

```YAML
freeradius_ldap_ttls_user_filter: (uid=%{User-Name})
```

### freeradius_owner

#### Default value

```YAML
freeradius_owner: freerad
```

### freeradius_raddbdir

#### Default value

```YAML
freeradius_raddbdir: /etc/freeradius/3.0
```

### freeradius_site_inner_tunnel_ttls

#### Default value

```YAML
freeradius_site_inner_tunnel_ttls: inner-tunnel
```

### freeradius_ssl_ca_file

#### Default value

```YAML
freeradius_ssl_ca_file: ca-certificates.crt
```

### freeradius_ssl_internal

#### Default value

```YAML
freeradius_ssl_internal: true
```

### freeradius_ssl_server_host

#### Default value

```YAML
freeradius_ssl_server_host: ssl-cert-snakeoil
```



## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia

# mariadb

Configure MariaDB

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_service_mariadb](#enable_service_mariadb)
  - [enable_service_mariadb_cron](#enable_service_mariadb_cron)
  - [mariadb_admin_account](#mariadb_admin_account)
  - [mariadb_db](#mariadb_db)
  - [mariadb_remote_access](#mariadb_remote_access)
  - [mariadb_user](#mariadb_user)
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

### enable_service_mariadb

#### Default value

```YAML
enable_service_mariadb: false
```

### enable_service_mariadb_cron

#### Default value

```YAML
enable_service_mariadb_cron: true
```

### mariadb_admin_account

#### Default value

```YAML
mariadb_admin_account: []
```

### mariadb_db

#### Default value

```YAML
mariadb_db: []
```

### mariadb_remote_access

#### Default value

```YAML
mariadb_remote_access: true
```

### mariadb_user

#### Default value

```YAML
mariadb_user: []
```



## Dependencies

- ysebastia.base.firewalld
- ysebastia.base.cron

## License

GPL-3.0-only

## Author

Yannick Sebastia

# plug

Plug host to BackupPC

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [backuppc_directory_backup](#backuppc_directory_backup)
  - [backuppc_linux](#backuppc_linux)
  - [backuppc_owner](#backuppc_owner)
  - [backuppc_serverhost](#backuppc_serverhost)
  - [enable_backuppc_plug](#enable_backuppc_plug)
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

### backuppc_directory_backup

#### Default value

```YAML
backuppc_directory_backup: /var/lib/backuppc
```

### backuppc_linux

#### Default value

```YAML
backuppc_linux:
  - /etc
  - /root
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

### enable_backuppc_plug

#### Default value

```YAML
enable_backuppc_plug: false
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

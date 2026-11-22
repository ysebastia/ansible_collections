# users

Manage local user accounts

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_users](#enable_base_users)
  - [users_accounts](#users_accounts)
  - [users_su_group](#users_su_group)
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

### enable_base_users

#### Default value

```YAML
enable_base_users: true
```

### users_accounts

#### Default value

```YAML
users_accounts: []
```

### users_su_group

#### Default value

```YAML
users_su_group: ''
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

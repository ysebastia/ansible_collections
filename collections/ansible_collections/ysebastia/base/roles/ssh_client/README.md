# ssh_client

Configure per-user SSH client host entries

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_ssh_client](#enable_base_ssh_client)
  - [ssh_client_default_options](#ssh_client_default_options)
  - [ssh_client_users](#ssh_client_users)
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

### enable_base_ssh_client

#### Default value

```YAML
enable_base_ssh_client: true
```

### ssh_client_default_options

#### Default value

```YAML
ssh_client_default_options:
  IdentitiesOnly: yes
  ForwardAgent: no
```

### ssh_client_users

#### Default value

```YAML
ssh_client_users: []
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

# git_repositories

Configure git and clone repositories per user

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_git_repositories](#enable_base_git_repositories)
  - [git_repositories_users](#git_repositories_users)
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

### enable_base_git_repositories

#### Default value

```YAML
enable_base_git_repositories: true
```

### git_repositories_users

#### Default value

```YAML
git_repositories_users: []
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

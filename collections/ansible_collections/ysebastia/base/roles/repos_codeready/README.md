# repos_codeready

Configure CodeReady repository

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [codeready_supported_os](#codeready_supported_os)
  - [enable_repositories_codeready](#enable_repositories_codeready)
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

### codeready_supported_os

#### Default value

```YAML
codeready_supported_os: [redhat]
```

### enable_repositories_codeready

#### Default value

```YAML
enable_repositories_codeready: false
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

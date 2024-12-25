# gitlab_runner

Configure Gitlab runner

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_gitlab_runner](#enable_gitlab_runner)
  - [gitlab_https_proxy](#gitlab_https_proxy)
  - [gitlab_supported_os](#gitlab_supported_os)
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

### enable_gitlab_runner

#### Default value

```YAML
enable_gitlab_runner: false
```

### gitlab_https_proxy

#### Default value

```YAML
gitlab_https_proxy:
```

### gitlab_supported_os

#### Default value

```YAML
gitlab_supported_os: [debian]
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

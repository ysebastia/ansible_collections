# docker_group

Append a user to Docker group

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [docker_user_to_append](#docker_user_to_append)
  - [enable_docker_group](#enable_docker_group)
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

### docker_user_to_append

#### Default value

```YAML
docker_user_to_append:
```

### enable_docker_group

#### Default value

```YAML
enable_docker_group: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

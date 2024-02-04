# service

Configure docker-compose as service

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [docker_compose_working_directory](#docker_compose_working_directory)
  - [enable_docker_compose_service](#enable_docker_compose_service)
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

### docker_compose_working_directory

#### Default value

```YAML
docker_compose_working_directory: /etc/docker/compose/
```

### enable_docker_compose_service

#### Default value

```YAML
enable_docker_compose_service: false
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

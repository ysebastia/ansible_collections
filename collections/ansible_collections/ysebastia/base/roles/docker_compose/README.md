# docker_compose

Install docker-compose

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [docker_compose_enable](#docker_compose_enable)
  - [docker_compose_files](#docker_compose_files)
  - [docker_compose_project](#docker_compose_project)
  - [docker_compose_templates](#docker_compose_templates)
  - [docker_compose_working_directory](#docker_compose_working_directory)
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

### docker_compose_enable

#### Default value

```YAML
docker_compose_enable: false
```

### docker_compose_files

#### Default value

```YAML
docker_compose_files: []
```

### docker_compose_project

#### Default value

```YAML
docker_compose_project: ''
```

### docker_compose_templates

#### Default value

```YAML
docker_compose_templates: []
```

### docker_compose_working_directory

#### Default value

```YAML
docker_compose_working_directory: /etc/docker/compose/
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

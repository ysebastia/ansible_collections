# jenkins_docker

Configure docker agent

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_jenkins_docker](#enable_jenkins_docker)
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

### enable_jenkins_docker

#### Default value

```YAML
enable_jenkins_docker: false
```



## Dependencies

- ysebastia.base.repos_docker_ce

## License

GPL-3.0-only

## Author

Yannick Sebastia

# agent

Configure jenkins agent

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_jenkins_agent](#enable_jenkins_agent)
  - [enable_jenkins_agent_ssh](#enable_jenkins_agent_ssh)
  - [jenkins_server_ssh_key](#jenkins_server_ssh_key)
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

### enable_jenkins_agent

#### Default value

```YAML
enable_jenkins_agent: false
```

### enable_jenkins_agent_ssh

#### Default value

```YAML
enable_jenkins_agent_ssh: false
```

### jenkins_server_ssh_key

#### Default value

```YAML
jenkins_server_ssh_key: '{{ inventory_dir }}/files/pubkeys/jenkins.pub'
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

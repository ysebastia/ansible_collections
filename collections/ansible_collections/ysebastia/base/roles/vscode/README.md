# vscode

Install and configure Visual Studio Code

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_vscode](#enable_base_vscode)
  - [vscode_common_extensions](#vscode_common_extensions)
  - [vscode_extensions](#vscode_extensions)
  - [vscode_package](#vscode_package)
  - [vscode_remote_extensions](#vscode_remote_extensions)
  - [vscode_settings](#vscode_settings)
  - [vscode_users](#vscode_users)
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

### enable_base_vscode

#### Default value

```YAML
enable_base_vscode: false
```

### vscode_common_extensions

#### Default value

```YAML
vscode_common_extensions:
  - anthropic.claude-code
  - redhat.ansible
  - redhat.vscode-yaml
  - streetsidesoftware.code-spell-checker
  - streetsidesoftware.code-spell-checker-french
```

### vscode_extensions

#### Default value

```YAML
vscode_extensions: "{{ ['ms-vscode-remote.remote-ssh'] + vscode_common_extensions
  }}"
```

### vscode_package

#### Default value

```YAML
vscode_package: code
```

### vscode_remote_extensions

#### Default value

```YAML
vscode_remote_extensions: '{{ vscode_common_extensions }}'
```

### vscode_settings

#### Default value

```YAML
vscode_settings:
  telemetry.telemetryLevel: off
  remote.SSH.enableAgentForwarding: false
  cSpell.language: en,fr
  chat.disableAIFeatures: true
```

### vscode_users

#### Default value

```YAML
vscode_users: []
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

# repos_anthropic

Configure Anthropic (Claude Code) repository

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [anthropic_channel](#anthropic_channel)
  - [anthropic_key_fingerprint](#anthropic_key_fingerprint)
  - [anthropic_key_url](#anthropic_key_url)
  - [enable_repositories_anthropic](#enable_repositories_anthropic)
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

### anthropic_channel

#### Default value

```YAML
anthropic_channel: stable
```

### anthropic_key_fingerprint

#### Default value

```YAML
anthropic_key_fingerprint: 31DDDE24DDFAB679F42D7BD2BAA929FF1A7ECACE
```

### anthropic_key_url

#### Default value

```YAML
anthropic_key_url: https://downloads.claude.ai/keys/claude-code.asc
```

### enable_repositories_anthropic

#### Default value

```YAML
enable_repositories_anthropic: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

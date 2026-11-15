# repos_microsoft

Configure Microsoft (Visual Studio Code) repository

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_repositories_microsoft](#enable_repositories_microsoft)
  - [microsoft_key_fingerprint](#microsoft_key_fingerprint)
  - [microsoft_key_url](#microsoft_key_url)
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

### enable_repositories_microsoft

#### Default value

```YAML
enable_repositories_microsoft: false
```

### microsoft_key_fingerprint

#### Default value

```YAML
microsoft_key_fingerprint: BC528686B50D79E339D3721CEB3E94ADBE1229CF
```

### microsoft_key_url

#### Default value

```YAML
microsoft_key_url: https://packages.microsoft.com/keys/microsoft.asc
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

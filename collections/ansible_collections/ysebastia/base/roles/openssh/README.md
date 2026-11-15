# openssh

Configure OpenSSH

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [openssh_config_base](#openssh_config_base)
  - [openssh_config_overrides](#openssh_config_overrides)
  - [openssh_password_authentification](#openssh_password_authentification)
  - [openssh_service](#openssh_service)
- [Discovered Tags](#discovered-tags)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

### openssh_config_base

#### Default value

```YAML
openssh_config_base:
  AllowTcpForwarding: no
  ChallengeResponseAuthentication: no
  Ciphers: aes256-ctr,aes192-ctr,aes128-ctr
  GSSAPIAuthentication: no
  ListenAddress: 0.0.0.0
  PasswordAuthentication: '{{ openssh_password_authentification }}'
  PermitUserEnvironment: no
  PrintLastLog: yes
  StrictModes: yes
  UseDNS: no
  X11Forwarding: no
```

### openssh_config_overrides

#### Default value

```YAML
openssh_config_overrides: {}
```

### openssh_password_authentification

#### Default value

```YAML
openssh_password_authentification: yes
```

### openssh_service

#### Default value

```YAML
openssh_service: sshd
```

## Discovered Tags

**_security_**

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

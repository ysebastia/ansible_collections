# unattended_upgrades

Configure automatic security updates on Debian

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_unattended_upgrades](#enable_base_unattended_upgrades)
  - [unattended_upgrades_automatic_reboot](#unattended_upgrades_automatic_reboot)
  - [unattended_upgrades_automatic_reboot_time](#unattended_upgrades_automatic_reboot_time)
  - [unattended_upgrades_mail](#unattended_upgrades_mail)
  - [unattended_upgrades_mail_report](#unattended_upgrades_mail_report)
  - [unattended_upgrades_origins](#unattended_upgrades_origins)
  - [unattended_upgrades_remove_unused_dependencies](#unattended_upgrades_remove_unused_dependencies)
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

### enable_base_unattended_upgrades

#### Default value

```YAML
enable_base_unattended_upgrades: false
```

### unattended_upgrades_automatic_reboot

#### Default value

```YAML
unattended_upgrades_automatic_reboot: false
```

### unattended_upgrades_automatic_reboot_time

#### Default value

```YAML
unattended_upgrades_automatic_reboot_time: 04:00
```

### unattended_upgrades_mail

#### Default value

```YAML
unattended_upgrades_mail: root
```

### unattended_upgrades_mail_report

#### Default value

```YAML
unattended_upgrades_mail_report: on-change
```

### unattended_upgrades_origins

#### Default value

```YAML
unattended_upgrades_origins:
  - origin=Debian,codename=${distro_codename}-security,label=Debian-Security
  - origin=Debian,codename=${distro_codename},label=Debian-Security
```

### unattended_upgrades_remove_unused_dependencies

#### Default value

```YAML
unattended_upgrades_remove_unused_dependencies: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia

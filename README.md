# Current Development Focus

The current objective is to build a polished, appliance-like streaming experience for Raspberry Pi.

Version 2 development focuses on simplifying the interface while improving reliability and usability.

## Current Goals

- Simplified full-screen home screen
- Large remote-friendly buttons
- Improved launcher architecture
- Physical Home button support
- Better memory management
- Simplified Settings menu
- Faster startup
- Improved error handling

---

# Active Feature Branches

| Branch | Status | Description |
|---------|--------|-------------|
| develop | Active | Integration branch |
| feature/new-ui | Planned | New appliance-style interface |
| feature/home-button | Planned | Physical Home button support |
| feature/bluetooth | Planned | Bluetooth headphone support |

---

# Development Philosophy

Every feature should meet the following goals before merging into `main`:

- Stable
- Modular
- Tested on Raspberry Pi hardware
- Family-friendly
- Well documented
- Easy to maintain

Features are merged only after successful testing on physical hardware.

---

# Roadmap

## In Progress

- Simplified UI redesign

## Next

- Home button support
- Bluetooth improvements
- Favorites redesign
- Settings cleanup

## Future

- User profiles
- Local media library
- Offline mode

- # Development Standards

MediaCenter follows several guiding principles:

- Modular architecture
- NASA-inspired coding practices
- Small, maintainable functions
- Clear version headers in every file
- Named constants instead of magic numbers
- Configuration separated from implementation
- Test on Windows before Raspberry Pi deployment
- Test on Raspberry Pi before merging into `main`
- Plugin system
- Theme support

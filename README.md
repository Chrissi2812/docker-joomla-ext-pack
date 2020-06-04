# joomla extension pack
Pretty basic image for usage with gitlab ci.
Will pack all files mentioned in manifest file in a zip file.
Updates version in manifest based on annotated git tags matching semver (eg. `v1.0.0` or `1.0.0`)

### Example
```yaml
build:
  image: chrissi2812/joomla-ext-pack:latest
  stage: build
  script:
    - extension_pack mod_hello_world
  artifacts:
    expire_in: 1 week
    paths:
      - mod_hello_world_*.zip
```


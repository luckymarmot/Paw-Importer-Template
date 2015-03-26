# Paw Importer Template

This is a template to write Paw importers in CoffeeScript, with an easy to use Cakefile to build and archive the extension.

## Get started

### Name your importer

Find a name for your importer, like `MyImporter` or `CustomLanguageImporter` or `ThirdPartyImporter`. You can then find a unique identifier for it, it will usually be `com.[YOUR-NAME-OR-COMPANY].[IMPORTER-NAME]`.

### Rename the importer file

Rename `MyImporter.coffee` to match your importer name

### Change the importer properties

In `MyImporter.coffee` (or whatever name your gave it):

* set your importer identifier in `MyImporter.identifier`
* set your importer name in `MyImporter.title`.
* rename the `MyImporter` class to match your importer name

### Update the Cakefile

In the `Cakefile` file:

* update the `file` variable to match your importer script filename
* set your importer identifier in the `identifier` variable

## Development

### Build & Install

```shell
npm install
cake build
cake install
```

### Watch

During development, watch for changes:

```shell
cake watch
```

## Write your importer

You'll find more help on the Paw Documentation, but everything happens in the `importString` method.

## License

This template is released under the [MIT License](LICENSE). Feel free to fork, and modify!

Copyright © 2014 Paw Inc.

## Contributors

See [Contributors](https://github.com/luckymarmot/Paw-Importer-Template/graphs/contributors).

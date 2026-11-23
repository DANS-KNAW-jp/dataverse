### file specific terms of use or license

The new feature of file specific *terms of use or license* can be enabled with the JVM setting:

    -Ddataverse.files.terms-of-use-or-license=true

When a reboot resets the setting to the default false, previously created file specific *terms of use or license* will still be visible in the API output, but new ones cannot be created.

The new feature is implemented with additional fields for API requests using the `OptionalFileParams` class and responses with the `DatasetVersion` and `FileMetadata` classes.

Endpoints accepting `OptionalFileParams`:

- `POST /api/datasets/:id/addFiles` (add files to a dataset version)
- `POST /api/datasets/:id/replaceFiles` (replace files in a dataset version)
- `POST /api/datasets/:id/files/metadata` (update metadata for multiple files)
- `POST /api/datasets/:id/add` (add a file to a dataset version)
- `POST /api/files/:id/metadata` (update file metadata)
- `POST /api/files/:id/replace` (replace a file)

Endpoints only returning `FileMetadata`, either directly or as part of a `DatasetVersion`.

- `GET /api/datasets/:id` (latest accessible version)
- `GET /api/datasets/:id/versions` (versions, with files)
- `GET /api/datasets/:id/versions/:versionId` (a dataset version)
- `GET /api/datasets/:id/versions/:versionId/files` (file metadata for a dataset version)
- `GET /api/datasets/export?exporter=dataverse_json` (export a dataset version)
- `GET /api/datasets/privateUrlDatasetVersion/:privateUrlToken`
- `GET /api/datasets/previewUrlDatasetVersion/:previewUrlToken`
- `PUT /api/datasets/:id/deleteMetadata` (update a dataset version by deleting metadata)
- `PUT /api/datasets/:id/editMetadata` (update dataset metadata)
- `PUT /api/datasets/:id/access` (update terms of access)
- `GET /api/files/:id` (latest accessible file metadata)
- `GET /api/files/:id/versions/:datasetVersionId` (file metadata for a dataset version)
- `GET /api/files/:id/metadata` (published file metadata)
- `GET /api/files/:id/metadata/draft` (draft file metadata)

Additional optional fields for the API requests are either `license` or `termsOfUse`, but not both. More fields are possible in case of `termsOfUse`.

```json
"license": {
    "name": "DANS Licence",
    "uri": "https://doi.org/10.17026/fp39-0x58",
    "iconUri": ""
}
"termsOfUse": "My terms",
"citationRequirements": "My citation requirements",
"conditions": "My conditions",
"confidentialityDeclaration": "My declaration",
"depositorRequirements": "My depositor Requirements",
"disclaimer": "My disclaimer",
"restrictions": "My restrictions",
"specialPermissions": "My special permissions"
```

Only if any of the files have file specific *terms of use or license*, the exported `DatasetVersion` JSON will include the `additionalLicenses` field.
Files with explicit *terms of use or license* will allways export the `license` or `termsOfUse` field in their `FileMetadata` JSON. When the feature is switched on, files without explicit terms will also have the additional fields.

```json
{
  "datasetVersion": {
    "files": [
      {
        "license": {
          "name": "CC0 1.0",
          "uri": "http://creativecommons.org/publicdomain/zero/1.0",
          "iconUri": "https://licensebuttons.net/p/zero/1.0/88x31.png"
        }
      },
      {
        "termsOfUse": "blabla"
      }
    ],
    "additionalLicenses" : [
      {
        "name": "DANS Licence",
        "uri": "https://doi.org/10.17026/fp39-0x58",
        "iconUri": ""
      },
      {
        "name": "Custom Dataset Terms"
      }
    ]
  }
}
```

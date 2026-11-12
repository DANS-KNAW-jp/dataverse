### file specific terms of use or license

The new feature of file specific terms of use or license can be enabled by setting the JVM setting `-Ddataverse.files.terms-of-use-or-license=true`. When the setting is reset to the default false with a reboot, previously created file specific terms of use or licenses will still be visible in the API output, but new ones cannot be created.

The new feature is implemented with additional fields for API requests using the OptionalFileParams class and responses with the DatasetVersion respective FileMetadata classes. This affects the following API endpoints:
- `POST /api/datasets/:id/add` (add files to a dataset version)
- `GET /api/datasets/export?exporter=dataverse_json` (get dataset version with file metadata)
- `GET /api/files/:id/metadata` (get metadata for a file in a dataset version)
- `PUT /api/files/:id/metadata` (update one or more file in a dataset version)

Additional optional fields for the API requests are either ``license`` or ``termsOfUse``, but not both. More fields are possible in case of ``termsOfUse``.

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

API's return a DatasetVersion will also have additional fields. At least the ``files`` will have one of the fields ``license`` or ``termsOfUse``.
Only if any of the files have file specific terms of use or license, the exported ``DatasetVersion`` JSON will include the ``additionalLicenses`` field.
The following example shows the new fields in their context. Other fields are omitted for brevity.

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


-- Deduplicate termsofaccess by content and add a unique content hash.
-- This keeps identical access rows from being created repeatedly while still allowing
-- distinct records when the content changes.

ALTER TABLE termsofaccess ADD COLUMN IF NOT EXISTS contenthash VARCHAR(64);

WITH ranked AS (
    SELECT
        id,
        ROW_NUMBER() OVER (
            PARTITION BY
                COALESCE(NULLIF(btrim(availabilitystatus), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(contactforaccess), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(dataaccessplace), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(originalarchive), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(sizeofcollection), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(studycompletion), ''), '') || '|' ||
                COALESCE(NULLIF(btrim(termsofaccess), ''), '') || '|' ||
                COALESCE(fileaccessrequest::text, 'false')
            ORDER BY id
        ) AS rn
    FROM termsofaccess
)
DELETE FROM termsofaccess t
USING ranked r
WHERE t.id = r.id
  AND r.rn > 1;

UPDATE termsofaccess
SET contenthash = encode(digest(
    COALESCE(NULLIF(btrim(availabilitystatus), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(contactforaccess), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(dataaccessplace), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(originalarchive), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(sizeofcollection), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(studycompletion), ''), '') || '|' ||
    COALESCE(NULLIF(btrim(termsofaccess), ''), '') || '|' ||
    COALESCE(fileaccessrequest::text, 'false'),
    'sha256'
), 'hex');

CREATE UNIQUE INDEX IF NOT EXISTS uk_termsofaccess_contenthash
    ON termsofaccess (contenthash);


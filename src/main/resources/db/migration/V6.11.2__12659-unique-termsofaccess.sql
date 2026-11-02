-- Deduplicate termsofaccess by content and add a unique content hash.
-- This keeps identical access rows from being created repeatedly while still allowing
-- distinct records when the content changes.

ALTER TABLE termsofaccess ADD COLUMN IF NOT EXISTS contenthash VARCHAR(64);

WITH normalized AS (
    SELECT
        id,
        (
            COALESCE(NULLIF(btrim(availabilitystatus), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(contactforaccess), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(dataaccessplace), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(originalarchive), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(sizeofcollection), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(studycompletion), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(termsofaccess), ''), '') || '|' ||
            CASE WHEN fileaccessrequest THEN 'true' ELSE 'false' END
            ) AS content_key
    FROM termsofaccess
),
     ranked AS (
         SELECT
             id,
             ROW_NUMBER() OVER (
            PARTITION BY content_key
            ORDER BY id
        ) AS rn,
             MIN(id) OVER (PARTITION BY content_key) AS keep_id
         FROM normalized
     ),
     dups AS (
         SELECT
             id AS dup_id,
             keep_id
         FROM ranked
         WHERE rn > 1
     )
UPDATE datasetversion dv
SET termsofaccess_id = d.keep_id
    FROM dups d
WHERE dv.termsofaccess_id = d.dup_id
  AND dv.termsofaccess_id IS DISTINCT FROM d.keep_id;

WITH normalized AS (
    SELECT
        id,
        (
            COALESCE(NULLIF(btrim(availabilitystatus), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(contactforaccess), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(dataaccessplace), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(originalarchive), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(sizeofcollection), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(studycompletion), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(termsofaccess), ''), '') || '|' ||
            CASE WHEN fileaccessrequest THEN 'true' ELSE 'false' END
            ) AS content_key
    FROM termsofaccess
),
     ranked AS (
         SELECT
             id,
             ROW_NUMBER() OVER (
            PARTITION BY content_key
            ORDER BY id
        ) AS rn,
             MIN(id) OVER (PARTITION BY content_key) AS keep_id
         FROM normalized
     ),
     dups AS (
         SELECT
             id AS dup_id,
             keep_id
         FROM ranked
         WHERE rn > 1
     )
UPDATE template t
SET termsofaccess_id = d.keep_id
    FROM dups d
WHERE t.termsofaccess_id = d.dup_id
  AND t.termsofaccess_id IS DISTINCT FROM d.keep_id;

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


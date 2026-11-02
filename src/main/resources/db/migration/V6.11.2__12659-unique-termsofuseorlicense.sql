ALTER TABLE termsofuseorlicense ADD COLUMN IF NOT EXISTS contenthash VARCHAR(64);

WITH normalized AS (
    SELECT
        id,
        (
            COALESCE(NULLIF(btrim(citationrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(conditions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(confidentialitydeclaration), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(depositorrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(disclaimer), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(restrictions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(specialpermissions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(termsofuse), ''), '') || '|' ||
            COALESCE(license_id::text, '')
            ) AS content_key
    FROM termsofuseorlicense
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
SET default_termsofuseorlicense_id = d.keep_id
    FROM dups d
WHERE dv.default_termsofuseorlicense_id = d.dup_id
  AND dv.default_termsofuseorlicense_id IS DISTINCT FROM d.keep_id;

WITH normalized AS (
    SELECT
        id,
        (
            COALESCE(NULLIF(btrim(citationrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(conditions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(confidentialitydeclaration), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(depositorrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(disclaimer), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(restrictions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(specialpermissions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(termsofuse), ''), '') || '|' ||
            COALESCE(license_id::text, '')
            ) AS content_key
    FROM termsofuseorlicense
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
SET default_termsofuseorlicense_id = d.keep_id
    FROM dups d
WHERE t.default_termsofuseorlicense_id = d.dup_id
  AND t.default_termsofuseorlicense_id IS DISTINCT FROM d.keep_id;

WITH normalized AS (
    SELECT
        id,
        (
            COALESCE(NULLIF(btrim(citationrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(conditions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(confidentialitydeclaration), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(depositorrequirements), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(disclaimer), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(restrictions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(specialpermissions), ''), '') || '|' ||
            COALESCE(NULLIF(btrim(termsofuse), ''), '') || '|' ||
            COALESCE(license_id::text, '')
            ) AS content_key
    FROM termsofuseorlicense
),
     ranked AS (
         SELECT
             id,
             ROW_NUMBER() OVER (
            PARTITION BY content_key
            ORDER BY id
        ) AS rn
         FROM normalized
     )
DELETE FROM termsofuseorlicense t
    USING ranked r
WHERE t.id = r.id
  AND r.rn > 1;

UPDATE termsofuseorlicense
SET contenthash = encode(digest(
    (
        COALESCE(NULLIF(btrim(citationrequirements), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(conditions), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(confidentialitydeclaration), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(depositorrequirements), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(disclaimer), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(restrictions), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(specialpermissions), ''), '') || '|' ||
        COALESCE(NULLIF(btrim(termsofuse), ''), '') || '|' ||
        COALESCE(license_id::text, '')
    )::bytea,
    'sha256'
), 'hex');

CREATE UNIQUE INDEX IF NOT EXISTS uk_termsofuseorlicense_contenthash
    ON termsofuseorlicense (contenthash);
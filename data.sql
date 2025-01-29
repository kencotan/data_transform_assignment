-- Check if the schema exists, if not, create it
DO
$$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.schemata
        WHERE schema_name = 'staging'
    ) THEN
        CREATE SCHEMA stg;
    END IF;
END
$$;

DO
$$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.schemata
        WHERE schema_name = 'dwh'
    ) THEN
        CREATE SCHEMA dwh;
    END IF;
END
$$;

DO
$$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.schemata
        WHERE schema_name = 'datamart'
    ) THEN
        CREATE SCHEMA dm;
    END IF;
END
$$;

-- data creation
CREATE TABLE public.transaksi (
    waktu_pembelian TIMESTAMP,
    user_id INT,
    store_id INT,
    barang_id INT,
    jumlah_barang INT,
    harga_barang NUMERIC(10, 2)
);

INSERT INTO public.transaksi (waktu_pembelian, user_id, store_id, barang_id, jumlah_barang, harga_barang)
SELECT
    -- Generate waktu pembelian acak antara 1 Januari 2025 00:00:00 hingga 3 Januari 2025 23:59:59
    TIMESTAMP '2025-01-01 00:00:00' + (random() * (TIMESTAMP '2025-01-03 23:59:59' - TIMESTAMP '2025-01-01 00:00:00')) AS waktu_pembelian,
    -- Generate user_id acak antara 1 dan 100
    FLOOR(random() * 100 + 1)::INT AS user_id,
    -- Generate store_id acak antara 1 dan 10
    FLOOR(random() * 10 + 1)::INT AS store_id,
    -- Generate barang_id acak antara 1 dan 50
    FLOOR(random() * 50 + 1)::INT AS barang_id,
    -- Generate jumlah barang acak antara 1 dan 10
    FLOOR(random() * 10 + 1)::INT AS jumlah_barang,
    -- Generate harga barang acak antara 10.000 dan 1.000.000
    FLOOR(random() * 990000 + 10000)::NUMERIC(10, 2) AS harga_barang
FROM generate_series(1, 1000);

-- NOTES
-- The data will generate a random number, so the data will always be different each time it is generated.

-- ============================================
-- ESQUEMA PARA GALERÍA DE IMÁGENES - SUPABASE
-- ============================================
-- Ejecuta este SQL en el SQL Editor de tu proyecto Supabase

-- 1. Tabla de imágenes
CREATE TABLE IF NOT EXISTS imagenes (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    titulo TEXT NOT NULL,
    descripcion TEXT,
    url TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Bucket para almacenar las imágenes
-- Ve a Storage > New Bucket y crea uno llamado "galeria"
-- Activa "Public" en el bucket

-- 3. Política para que todos puedan leer (SELECT)
CREATE POLICY "Allow public read" ON storage.objects
    FOR SELECT USING (bucket_id = 'galeria');

-- 4. Política para que solo autenticados puedan subir (INSERT)
CREATE POLICY "Allow authenticated insert" ON storage.objects
    FOR INSERT WITH CHECK (bucket_id = 'galeria');

-- 5. Política para que solo autenticados puedan borrar (DELETE)
CREATE POLICY "Allow authenticated delete" ON storage.objects
    FOR DELETE USING (bucket_id = 'galeria');

-- 6. Política para la tabla imagenes (lectura pública)
ALTER TABLE imagenes ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read imagenes" ON imagenes
    FOR SELECT USING (true);

CREATE POLICY "Allow authenticated insert imagenes" ON imagenes
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated update imagenes" ON imagenes
    FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Allow authenticated delete imagenes" ON imagenes
    FOR DELETE USING (auth.role() = 'authenticated');

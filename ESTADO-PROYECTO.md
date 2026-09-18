# Estado del Proyecto: mis-viajes

## URL del sitio
https://tousuario.github.io/mis-viajes/

## Repo Git
https://github.com/batoi2024/mis-viajes.git

## Qué se ha hecho hasta ahora

### Mejoras completadas
- Meta tags SEO, Open Graph, Twitter Cards
- Robots.txt y sitemap.xml
- Modo oscuro (persistente con localStorage)
- Lightbox para galería (clic en imagen se hace grande)
- Filtros de destinos (Asia, Playa, Cultura)
- Sección de testimonios
- Mapa interactivo con Leaflet
- Newsletter
- Enlaces sociales en footer
- Lazy loading en imágenes
- Preload de imagen hero

### Integración Supabase (EN PROCESO)
- Archivo `supabase-schema.sql` creado con el esquema de la base de datos
- Script de Supabase agregado al HTML
- Panel de admin con login, subir, editar y borrar imágenes implementado
- Botón ⚙️ para acceder al admin

## Lo que falta (PRÓXIMOS PASOS)

### El usuario ya tiene cuenta en Supabase creada

1. **Crear la tabla `imagenes` en Supabase:**
   - Ir a SQL Editor en Supabase
   - Pegar y ejecutar el contenido de `supabase-schema.sql`

2. **Crear bucket de Storage:**
   - Ir a Storage > New Bucket
   - Nombre: `galeria`
   - Activar "Public"

3. **Crear usuario admin:**
   - Ir a Authentication > Users > Add user
   - Email y contraseña para login del admin

4. **Copiar credenciales de Supabase:**
   - Settings > API
   - Copiar **Project URL** y **anon public key**

5. **Pegar credenciales en index.html:**
   - Buscar al inicio del `<script>`:
     ```javascript
     const SUPABASE_URL = 'https://TU-PROYECTO.supabase.co';
     const SUPABASE_KEY = 'TU-CLAVE-ANON';
     ```
   - Reemplazar con las credenciales reales

6. **Hacer commit y push** de los cambios

## Archivos importantes
- `/home/coco/mis-viajes/index.html` - Archivo principal
- `/home/coco/mis-viajes/supabase-schema.sql` - Esquema SQL para Supabase
- `/home/coco/mis-viajes/robots.txt` - Archivo SEO
- `/home/coco/mis-viajes/sitemap.xml` - Sitemap SEO

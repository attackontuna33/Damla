-- Damla sitesi için gerekli Supabase kurulumu
-- NOT: Bu yapı giriş olmadan yazma izni verir. Site URL'sini bilen kişiler medya yükleyebilir/değiştirebilir.
-- Güvenli yönetici girişi isterseniz bu izinleri daha sonra Auth ile sınırlandırmalıyız.

create table if not exists public.site_media (
  key text primary key,
  value jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.site_media enable row level security;

drop policy if exists "Public can read site media" on public.site_media;
create policy "Public can read site media"
on public.site_media for select to anon using (true);

drop policy if exists "Public can insert site media" on public.site_media;
create policy "Public can insert site media"
on public.site_media for insert to anon with check (true);

drop policy if exists "Public can update site media" on public.site_media;
create policy "Public can update site media"
on public.site_media for update to anon using (true) with check (true);

drop policy if exists "Public can upload to Images bucket" on storage.objects;
create policy "Public can upload to Images bucket"
on storage.objects for insert to anon
with check (bucket_id = 'Images');

drop policy if exists "Public can read Images bucket" on storage.objects;
create policy "Public can read Images bucket"
on storage.objects for select to anon
using (bucket_id = 'Images');

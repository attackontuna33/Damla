DAMLA'YA SİTE PAKETİ

DOSYALAR
- index.html: GitHub deposundaki index.html yerine koyulacak site dosyası.
- supabase_damla_kurulum.sql: Supabase SQL Editor'de çalıştırılması gereken tablo ve izinler.
- orijinal_yedek.html: Önceki sitenin yedek kopyası.

KURULUM
1. Supabase projesinde Storage bölümünde adı tam olarak Images olan bir bucket oluşturun.
2. Bucket ayarlarında Public bucket seçeneğini açın; bu sürüm fotoğrafları public URL üzerinden gösterir.
3. Supabase SQL Editor'de supabase_damla_kurulum.sql dosyasının içeriğini çalıştırın.
4. GitHub'da attacktuna33/Damla deposundaki index.html dosyasını açın, düzenleme kalemine basın ve bu paketteki index.html içeriğiyle değiştirin. Commit changes ile kaydedin.
5. Cloudflare Worker/site güncellemesini bekleyin; sonra siteyi yeniden açıp fotoğraf yüklemeyi test edin.

ÖNEMLİ GÜVENLİK NOTU
Bu kurulum anonim ziyaretçilere medya yükleme ve site_media tablosuna yazma izni verir. Yönetici şifresi HTML/JavaScript içinde tutulduğu için gerçek bir güvenlik sınırı değildir. Özel fotoğraflar veya hassas içerikler için bu haliyle kullanmayın. Güvenli kullanım için yüklemeyi kimlik doğrulama veya sunucu tarafı yetkilendirmeyle sınırlandırın.

NOT
Dosyalar canlı Supabase projesinde uçtan uca test edilmemiştir. Bucket adı, RLS politikaları ve tarayıcı konsolundaki hatalar çalışma sonucunu etkileyebilir.

/* =====================================================================
   Çətinlik:  [*]  orta     [**]  çətin     [***]  ən çətin
   Hər tapşırığın altında boş yer var — həllinizi ora yazın.
   ===================================================================== */


/* =====================================================================
   BÖLMƏ A: SƏTİR FUNKSİYALARI
   ===================================================================== */

-- A1 [*]
-- Hər işçi üçün iki sütun göstərin:
--   qisa_ad  -> adın ilk hərfi + nöqtə + boşluq + soyad   (məs: S. King)
--   email    -> email sütunu kiçik hərflə + '@company.az'
-- Nəticə soyada görə əlifba sırası ilə olsun.




-- A2 [*]
-- Soyadı 5 hərfdən uzun olan, amma adında 'a' hərfi (böyük və ya kiçik)
-- OLMAYAN işçiləri tapın.




-- A3 [*]
-- Adı və soyadı eyni hərflə başlayan işçiləri tapın.




-- A4 [**]
-- Bütün işçilərin maaşı 7.5% artırılır. Göstərin:
--   ad, soyad, köhnə maaş,
--   yeni_maas  -> 2 rəqəmə qədər yuvarlaqlaşdırılmış
--   artim      -> artım məbləği, tam ədədə AŞAĞI yuvarlaqlaşdırılmış
-- Yalnız yeni maaşı 10000-dən çox olanlar görünsün.
-- İpucu: WHERE-də alias işləyirmi?




-- A5 [*]
-- employee_id-si TƏK olan və maaşı 1000-ə TAM bölünən işçiləri tapın.




-- A6 [**]
-- Hər işçinin şirkətdə nə qədər işlədiyini bu formatda göstərin:
--   '12 il 4 ay'
-- (tam illər + qalan tam aylar)




-- A7 [**]
-- Hər işçinin işə başlama tarixini bu formatda göstərin:
--   'Monday, 17 June 2003'
-- və yalnız HƏFTƏ SONU (şənbə və ya bazar) işə başlayanları göstərin.




-- A8 [*]
-- Ayın SON 5 GÜNÜNDƏ işə qəbul olunan işçiləri tapın.
-- (ayın neçə gün olmasından asılı olmayaraq düzgün işləməlidir)




-- A9 [**]
-- Hər işçinin sınaq müddəti işə qəbuldan 6 ay sonra bitir.
-- Göstərin: ad, hire_date, sınaq müddətinin bitdiyi tarix,
-- və ondan SONRAKI ilk bazar ertəsi (işçinin rəsmi qəbul günü).




-- A10 [**]
-- Hər işçi üçün göstərin:
--   illik_gelir -> 12 aylıq maaş + komissiya
--                  (komissiya = illik maaş * commission_pct,
--                   komissiyası olmayan üçün 0)
--   status      -> 'Komissiyalı' və ya 'Komissiyasız'
-- İllik gəlirə görə azalan sıra ilə.




-- A11 [**]
-- Hər işçinin adını və rəhbərini göstərin:
--   manager_id varsa onun özü, yoxdursa 'Rəhbər yoxdur' yazılsın.
-- İpucu: NVL(manager_id, 'Rəhbər yoxdur') niyə işləmir?




-- A12 [***]
-- Maaşa görə kateqoriya yaradın:
--   15000 və çox       -> 'Rəhbər'
--   10000 – 14999      -> 'Yüksək'
--   5000  – 9999       -> 'Orta'
--   5000-dən az        -> 'Aşağı'
-- Nəticə əvvəlcə kateqoriyaya görə (Rəhbər, Yüksək, Orta, Aşağı
-- ardıcıllığı ilə — ƏLİFBA SIRASI İLƏ YOX!), sonra kateqoriya
-- daxilində soyada görə sıralansın.




/* =====================================================================
   BÖLMƏ B: QRUP FUNKSİYALARI, GROUP BY, HAVING
   ===================================================================== */

-- B1 [*]
-- Hər vəzifə (job_id) üzrə göstərin:
--   işçi sayı, ən aşağı maaş, ən yüksək maaş,
--   orta maaş (2 rəqəmə qədər yuvarlaq),
--   ən yüksək və ən aşağı maaş arasındakı fərq.
-- Yalnız 3 və daha çox işçisi olan vəzifələr,
-- maaş fərqinə görə azalan sıra ilə.




-- B2 [**]
-- Hər şöbə üzrə komissiya ALAN və ALMAYAN işçilərin sayını
-- yan-yana iki sütunda göstərin.
-- Şöbəsi olmayan işçilər də ayrıca sətirdə, ən yuxarıda görünsün.




-- B3 [*]
-- Hər il üzrə neçə işçinin işə qəbul olunduğunu göstərin.
-- Ən çox işçi qəbul olunan il ən yuxarıda olsun.




-- B4 [**]
-- Həftənin hər günü üzrə neçə işçinin işə qəbul olunduğunu göstərin
-- (məs: Monday 15, Tuesday 22 ...). Ən çoxu yuxarıda.




-- B5 [**]
-- Orta maaşı 8000-dən çox olan və ən azı 2 işçisi olan şöbələri tapın.
-- Şöbəsi olmayan işçiləri hesablamaya daxil etməyin.
-- Hansı şərt WHERE-ə, hansı HAVING-ə yazılmalıdır?




-- B6 [**]
-- Soyadın İLK HƏRFİNƏ görə qruplaşdırın: hər hərf üçün işçi sayı.
-- Yalnız 3 və daha çox işçisi olan hərfləri, əlifba sırası ilə göstərin.




-- B7 [**]
-- Hər rəhbər (manager_id) üzrə tabeliyində olan işçilərin sayını
-- və onların ümumi maaşını göstərin.
-- Yalnız ən azı 5 tabeçisi olan rəhbərlər, tabeçi sayına görə azalan.




-- B8 [***]
-- Aşağıdakı xəritəyə görə şöbələri qruplaşdırın (DECODE ilə):
--   10 -> 'Admin', 20 -> 'Marketing', 50 -> 'Anbar', 80 -> 'Satış',
--   qalan hamısı (NULL da daxil) -> 'Digər'
-- Hər qrup üçün işçi sayı və orta maaş (tam ədədə yuvarlaq).




-- B9 [***]
-- Hər şöbə üzrə bir sətirdə göstərin:
--   ümumi işçi sayı,
--   maaşı 10000-dən çox olan işçilərin sayı,
--   maaşı 5000-dən az olan işçilərin sayı.
-- İpucu: COUNT NULL-ları saymır. CASE ilə birləşdirin.




-- B10 [***]
-- job_id-lər 'IT_PROG', 'SA_REP', 'ST_CLERK' kimi yazılıb.
-- Alt xəttdən ƏVVƏLKİ hissəyə (IT, SA, ST, ...) görə qruplaşdırın:
-- hər qrup üçün işçi sayı və orta maaş (tam ədədə yuvarlaq).
-- Orta maaşa görə azalan sıra ilə.




-- B11 [***]
-- Hər il üzrə göstərin:
--   həmin ilin ilk qəbul tarixi, son qəbul tarixi,
--   həmin il qəbul olunanlar arasında ən yüksək maaş.
-- Yalnız 5-dən çox işçi qəbul olunan illər.




/* =====================================================================
   BÖLMƏ C: XƏTANI TAP VƏ İZAH ET (kompüterə baxmadan cavab verin,
            sonra işlədib yoxlayın)
   ===================================================================== */

-- C1
-- Bu sorğu niyə xəta verir? İki fərqli yolla düzəldin.
--   SELECT department_id, first_name, AVG(salary)
--   FROM employees
--   GROUP BY department_id;




-- C2
-- Bu sorğu niyə xəta verir? Düzəldin.
--   SELECT job_id, SUM(salary) AS cem
--   FROM employees
--   WHERE SUM(salary) > 20000
--   GROUP BY job_id;




-- C3
-- Bu sorğunun 5 sütunu bir-birindən niyə fərqlidir?
-- Əvvəlcə təxmin edin, sonra işlədib yoxlayın.
--   SELECT COUNT(*),
--          COUNT(commission_pct),
--          COUNT(DISTINCT commission_pct),
--          AVG(commission_pct),
--          AVG(NVL(commission_pct, 0))
--   FROM employees;




-- C4
-- Bu sorğu xəta vermir, amma məntiqi səhvi var. Nədir?
--   SELECT first_name, salary,
--          CASE WHEN salary < 10000 THEN 'Orta'
--               WHEN salary < 5000  THEN 'Aşağı'
--               ELSE 'Yüksək'
--          END AS kateqoriya
--   FROM employees;
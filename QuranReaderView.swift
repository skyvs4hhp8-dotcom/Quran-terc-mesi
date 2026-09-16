<!DOCTYPE html>
<html lang="az">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Qur'an - Qədim Əlyazma Arxiv</title>
    
    <!-- iPhone ana ekran ikonu -->
    <link rel="apple-touch-icon" href="https://img.icons8.com/color/192/quran.png">
    <link rel="icon" type="image/png" href="https://img.icons8.com/color/96/quran.png">

    <!-- Klassik və mistik atmosfer üçün Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;700&family=Playfair+Display:ital,wght@0,500;0,700;1,400&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --bg-dark: #0a0705;
            --parchment-bg: #14100c;
            --parchment-card: #1c1510;
            --border-gold: rgba(212, 175, 55, 0.25);
            --border-gold-active: #d4af37;
            --primary-gold: #f3e5ab;
            --accent-glow: rgba(212, 175, 55, 0.15);
            --emerald-green: #0d5c3f;
            --emerald-glow: rgba(16, 185, 129, 0.3);
            --text-main: #e2d9c5;
            --text-muted: #9e9382;
            --danger: #992b2b;
        }

        * {
            box-sizing: border-box;
            -webkit-tap-highlight-color: transparent;
            font-family: 'Playfair Display', serif;
        }

        body {
            background-color: var(--bg-dark);
            background-image: 
                radial-gradient(circle at 50% 10%, rgba(35, 25, 15, 0.8) 0%, rgba(10, 7, 5, 0.95) 70%),
                url("https://www.transparenttextures.com/patterns/aged-paper.png");
            color: var(--text-main);
            margin: 0;
            padding: 16px;
            min-height: 100vh;
        }

        .container {
            max-width: 500px;
            margin: auto;
            padding-bottom: 40px;
        }

        /* Mistik Başlıq */
        .app-header {
            text-align: center;
            margin-bottom: 20px;
            padding: 24px 10px;
            background: linear-gradient(to bottom, rgba(20, 16, 12, 0.9), transparent);
            border-bottom: 1px solid var(--border-gold);
        }

        .app-header h1 {
            font-family: 'Cinzel', serif;
            font-size: 28px;
            font-weight: 700;
            margin: 0;
            color: var(--primary-gold);
            letter-spacing: 2px;
            text-shadow: 0 2px 10px rgba(212, 175, 55, 0.3);
        }

        .app-header p {
            color: var(--text-muted);
            font-size: 13px;
            margin-top: 8px;
            font-style: italic;
            letter-spacing: 0.5px;
        }

        .creators-card {
            background: var(--parchment-card);
            border: 1px solid var(--border-gold);
            border-radius: 12px;
            padding: 12px;
            margin-bottom: 20px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
        }

        .creators-title {
            font-family: 'Cinzel', serif;
            font-size: 10px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
            color: var(--primary-gold);
            margin-bottom: 4px;
            opacity: 0.8;
        }

        .creators-names {
            font-size: 14px;
            font-weight: 700;
            color: var(--text-main);
            letter-spacing: 1px;
        }

        /* Axtarış Sətr və Panellər */
        .search-box {
            position: relative;
            margin-bottom: 20px;
        }

        .search-input {
            width: 100%;
            padding: 14px 16px 14px 46px;
            border-radius: 12px;
            border: 1px solid var(--border-gold);
            background: var(--parchment-bg);
            color: var(--text-main);
            font-size: 15px;
        }

        .search-input:focus {
            outline: none;
            border-color: var(--border-gold-active);
            box-shadow: 0 0 10px var(--accent-glow);
        }

        .search-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--primary-gold);
        }

        .backup-panel {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        .btn-backup {
            flex: 1;
            background: rgba(20, 92, 63, 0.2);
            color: #52b788;
            border: 1px solid rgba(82, 183, 136, 0.3);
            padding: 10px;
            border-radius: 10px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            text-align: center;
            font-family: 'Cinzel', serif;
        }

        /* Surə Grid Paneli */
        .surah-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 12px;
        }

        .surah-card {
            background: var(--parchment-card);
            border: 1px solid var(--border-gold);
            padding: 14px;
            border-radius: 12px;
            color: var(--text-main);
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 12px;
            transition: all 0.3s ease;
            position: relative;
            box-shadow: inset 0 0 15px rgba(0,0,0,0.4);
        }

        .surah-card:hover {
            border-color: var(--border-gold-active);
            transform: translateY(-2px);
            box-shadow: 0 4px 15px var(--accent-glow);
        }

        /* Qaldığın Surə (Mistik Yaşıl/Qızılı işarə) */
        .surah-card.active-bookmark {
            border-color: #52b788;
            background: linear-gradient(135deg, rgba(13, 92, 63, 0.4), var(--parchment-card));
            box-shadow: 0 0 20px rgba(82, 183, 136, 0.25);
        }

        .bookmark-dot {
            position: absolute;
            top: 6px;
            right: 8px;
            font-size: 9px;
            background: #52b788;
            color: #0a0705;
            padding: 2px 6px;
            border-radius: 4px;
            font-weight: 700;
            font-family: 'Cinzel', serif;
        }

        .surah-badge {
            background: rgba(212, 175, 55, 0.1);
            color: var(--primary-gold);
            font-family: 'Cinzel', serif;
            font-weight: 700;
            font-size: 13px;
            min-width: 30px;
            height: 30px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid var(--border-gold);
        }

        .surah-card.active-bookmark .surah-badge {
            background: rgba(82, 183, 136, 0.2);
            color: #52b788;
            border-color: #52b788;
        }

        .surah-title {
            font-weight: 600;
            font-size: 14px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        /* Surə İçi Ekranı */
        .back-btn {
            background: var(--parchment-card);
            color: var(--primary-gold);
            border: 1px solid var(--border-gold);
            padding: 10px 16px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 13px;
            cursor: pointer;
            margin-bottom: 15px;
            font-family: 'Cinzel', serif;
        }

        .batch-actions {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }

        .btn-batch {
            flex: 1;
            padding: 10px;
            border-radius: 10px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            border: none;
            text-align: center;
        }

        .btn-copy-all {
            background: rgba(59, 130, 246, 0.15);
            color: #60a5fa;
            border: 1px solid rgba(59, 130, 246, 0.3);
        }

        .btn-clear-all {
            background: rgba(153, 43, 43, 0.2);
            color: #e06d6d;
            border: 1px solid rgba(153, 43, 43, 0.4);
        }

        .add-card {
            background: var(--parchment-card);
            border: 1px solid var(--border-gold);
            padding: 18px;
            border-radius: 14px;
            margin-bottom: 20px;
            box-shadow: inset 0 0 20px rgba(0,0,0,0.5);
        }

        .input-group label {
            display: block;
            font-size: 11px;
            font-weight: 700;
            color: var(--text-muted);
            margin-bottom: 6px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-family: 'Cinzel', serif;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid var(--border-gold);
            background: var(--bg-dark);
            color: var(--text-main);
            font-size: 14px;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--border-gold-active);
        }

        textarea.form-control {
            resize: vertical;
            min-height: 110px;
        }

        .btn-primary {
            width: 100%;
            background: linear-gradient(135deg, #2d2416, #14100c);
            color: var(--primary-gold);
            border: 1px solid var(--border-gold-active);
            padding: 14px;
            border-radius: 10px;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            margin-top: 10px;
            font-family: 'Cinzel', serif;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.5);
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #3d311e, #1c1510);
        }

        /* Ayə Kartı - Mistik Əlyazma Stili */
        .verse-card {
            background: var(--parchment-card);
            border: 1px solid var(--border-gold);
            border-radius: 14px;
            padding: 20px;
            margin-bottom: 16px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.7), inset 0 0 20px rgba(0,0,0,0.4);
            position: relative;
        }

        /* Qaldığın Ayə (Xüsusi parıltılı çərçivə) */
        .verse-card.bookmarked-verse {
            border-color: #52b788;
            background: linear-gradient(135deg, rgba(13, 92, 63, 0.25), var(--parchment-card));
            box-shadow: 0 0 25px rgba(82, 183, 136, 0.2), inset 0 0 20px rgba(0,0,0,0.5);
        }

        .verse-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 14px;
            border-bottom: 1px solid var(--border-gold);
            padding-bottom: 10px;
        }

        .verse-number {
            background: rgba(212, 175, 55, 0.1);
            color: var(--primary-gold);
            font-family: 'Cinzel', serif;
            font-size: 12px;
            font-weight: 700;
            padding: 4px 12px;
            border-radius: 20px;
            border: 1px solid var(--border-gold);
        }

        .verse-card.bookmarked-verse .verse-number {
            background: rgba(82, 183, 136, 0.2);
            color: #52b788;
            border-color: #52b788;
        }

        .verse-actions {
            display: flex;
            gap: 6px;
            flex-wrap: wrap;
            justify-content: flex-end;
        }

        .action-btn {
            border: none;
            padding: 6px 10px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 600;
            cursor: pointer;
            font-family: 'Cinzel', serif;
        }

        .btn-bookmark {
            background: rgba(82, 183, 136, 0.15);
            color: #52b788;
            border: 1px solid rgba(82, 183, 136, 0.3);
        }

        .verse-card.bookmarked-verse .btn-bookmark {
            background: #52b788;
            color: #0a0705;
        }

        .btn-copy {
            background: rgba(59, 130, 246, 0.15);
            color: #60a5fa;
            border: 1px solid rgba(59, 130, 246, 0.3);
        }

        .btn-delete {
            background: rgba(153, 43, 43, 0.15);
            color: #e06d6d;
            border: 1px solid rgba(153, 43, 43, 0.3);
        }

        .verse-text {
            font-size: 19px;
            line-height: 2;
            color: var(--text-main);
            margin: 0;
            white-space: pre-line;
            text-align: right;
            letter-spacing: 0.5px;
        }

        .hidden { display: none !important; }

        .empty-state {
            text-align: center;
            padding: 40px;
            color: var(--text-muted);
            font-size: 14px;
            font-style: italic;
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Surələr Siyahısı Ekranı -->
    <div id="surah-view">
        <div class="app-header">
            <h1>HÜZUR ARXİVİ</h1>
            <p>Qədim Əlyazma Qatqısı</p>
        </div>

        <div class="creators-card">
            <div class="creators-title">Layihə Müəllifi</div>
            <div class="creators-names">Ağa Babayev</div>
        </div>
        
        <div class="backup-panel">
            <button class="btn-backup" onclick="exportData()">💾 Arxivi Qoru</button>
            <button class="btn-backup" onclick="triggerImport()">📂 Arxiv Yüklə</button>
            <input type="file" id="import-file" class="hidden" accept=".json" onchange="importData(event)">
        </div>

        <div class="search-box">
            <span class="search-icon">🔍</span>
            <input type="text" id="surah-search" class="search-input" placeholder="Surə axtar..." onkeyup="filterSurahs()">
        </div>

        <div class="surah-grid" id="surah-container"></div>
    </div>

    <!-- Ayələr Ekranı -->
    <div id="verse-view" class="hidden">
        <button class="back-btn" onclick="showSurahs()">← Surələrə Qayıt</button>

        <div class="app-header" style="text-align: left; margin-bottom: 10px; padding: 10px; border: none;">
            <h1 id="current-surah-title" style="font-size: 20px;"></h1>
        </div>

        <div class="batch-actions">
            <button class="btn-batch btn-copy-all" onclick="copyAllVerses()">📋 Hamısını Kopyala</button>
            <button class="btn-batch btn-clear-all" onclick="clearAllVerses()">🗑️ Hamısını Təmizlə</button>
        </div>

        <div class="add-card">
            <div class="input-group">
                <label>Ayələri Daxil Et (Məs: 7. Mətn...)</label>
                <textarea id="verse-text" class="form-control" placeholder="7. Ayənin mətni buraya...&#10;8. Digər ayə..."></textarea>
            </div>
            <button class="btn-primary" onclick="addVerse()">+ Ayəni Əlavə Et</button>
        </div>

        <div class="search-box">
            <span class="search-icon">🔍</span>
            <input type="text" id="verse-search" class="search-input" placeholder="Ayələrdə axtar..." onkeyup="filterVerses()">
        </div>

        <div id="verses-container"></div>
    </div>
</div>

<script>
    const surahNames = [
        "Fatihə", "Bəqərə", "Ali-İmran", "Nisa", "Maidə", "Ənam", "Əraf", "Ənfəl", "Tövbə", "Yunus",
        "Hud", "Yusuf", "Rəd", "İbrahim", "Hicr", "Nəhl", "İsra", "Kəhf", "Məryəm", "Taha",
        "Ənbiya", "Həcc", "Möminun", "Nur", "Furqan", "Şüəra", "Nəml", "Qəsəs", "Ənkəbut", "Rum",
        "Loğman", "Səcdə", "Əhzab", "Səba", "Fatir", "Yasin", "Saffat", "Sad", "Zümər", "Qafir",
        "Fussilət", "Şura", "Zuhruf", "Duhan", "Casiyə", "Əhqaf", "Məhəmməd", "Fətih", "Hucurat", "Qaf",
        "Zariyat", "Tur", "Nəcm", "Qəmər", "Rəhman", "Vaqiə", "Hədid", "Mücadilə", "Həşr", "Mütəhinə",
        "Səff", "Cümə", "Münafiqun", "Təğabun", "Talaq", "Təhrim", "Mülk", "Qələm", "Haqqa", "Məaric",
        "Nuh", "Cinn", "Müzzəmmil", "Müddəssir", "Qiyamət", "İnsan", "Mürsəlat", "Nəbə", "Naziat", "Əbəsə",
        "Təkvir", "İnfitar", "Mutaffifin", "İnşiqaq", "Büruc", "Tariq", "Əla", "Ğaşiyə", "Fəcr", "Bələd",
        "Şəms", "Leyl", "Zuha", "İnşirah", "Tin", "Ələq", "Qədr", "Bəyyinə", "Zilzal", "Adiyat",
        "Qariə", "Təkasür", "Əsr", "Huməzə", "Fil", "Qureyş", "Maun", "Kevsər", "Kafirun", "Nəsr",
        "Məsəd", "İxlas", "Fələq", "Nas"
    ];

    let currentSurahIndex = null;
    const surahContainer = document.getElementById('surah-container');

    function getStorageData() {
        return JSON.parse(localStorage.getItem('quran_data') || '{}');
    }

    function getBookmark() {
        return JSON.parse(localStorage.getItem('quran_bookmark') || 'null');
    }

    function renderSurahs(list) {
        surahContainer.innerHTML = '';
        const bookmark = getBookmark();

        list.forEach((name) => {
            const originalIndex = surahNames.indexOf(name) + 1;
            const card = document.createElement('div');
            
            let isBookmarked = bookmark && Number(bookmark.surah) === Number(originalIndex);
            card.className = `surah-card ${isBookmarked ? 'active-bookmark' : ''}`;
            
            card.onclick = () => openSurah(originalIndex, `${originalIndex}. ${name}`);
            
            let bookmarkBadge = isBookmarked ? `<div class="bookmark-dot">📌 ${bookmark.verse}-ci ayə</div>` : '';
            card.innerHTML = `
                <div class="surah-badge">${originalIndex}</div>
                <div class="surah-title">${name}</div>
                ${bookmarkBadge}
            `;
            surahContainer.appendChild(card);
        });
    }

    renderSurahs(surahNames);

    function filterSurahs() {
        const query = document.getElementById('surah-search').value.toLowerCase();
        const filtered = surahNames.filter((name, idx) => `${idx + 1}. ${name}`.toLowerCase().includes(query));
        renderSurahs(filtered);
    }

    function openSurah(id, name) {
        currentSurahIndex = id;
        document.getElementById('surah-view').classList.add('hidden');
        document.getElementById('verse-view').classList.remove('hidden');
        document.getElementById('current-surah-title').innerText = name;
        document.getElementById('verse-search').value = '';
        window.scrollTo(0, 0);
        loadVerses();
    }

    function showSurahs() {
        renderSurahs(surahNames);
        document.getElementById('surah-view').classList.remove('hidden');
        document.getElementById('verse-view').classList.add('hidden');
        window.scrollTo(0, 0);
    }

    function exportData() {
        const data = localStorage.getItem('quran_data');
        const bookmark = localStorage.getItem('quran_bookmark');
        const exportObj = { data: JSON.parse(data || '{}'), bookmark: JSON.parse(bookmark || 'null') };
        
        const blob = new Blob([JSON.stringify(exportObj)], { type: 'application/json' });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = 'quran_mistik_arxiv.json';
        a.click();
        URL.revokeObjectURL(url);
    }

    function triggerImport() {
        document.getElementById('import-file').click();
    }

    function importData(event) {
        const file = event.target.files[0];
        if (!file) return;

        const reader = new FileReader();
        reader.onload = function(e) {
            try {
                const parsed = JSON.parse(e.target.result);
                if (parsed.data) {
                    localStorage.setItem('quran_data', JSON.stringify(parsed.data));
                    localStorage.setItem('quran_bookmark', JSON.stringify(parsed.bookmark));
                } else {
                    localStorage.setItem('quran_data', JSON.stringify(parsed));
                }
                alert('Məlumatlar bərpa olundu!');
                renderSurahs(surahNames);
            } catch (err) {
                alert('Fayl xətalıdır!');
            }
        };
        reader.readAsText(file);
    }

    function setBookmark(verseNum) {
        const bookmarkData = { surah: currentSurahIndex, verse: verseNum };
        localStorage.setItem('quran_bookmark', JSON.stringify(bookmarkData));
        loadVerses(document.getElementById('verse-search').value.trim());
        alert(`Qaldığın yer yadda saxlanıldı: Ayə ${verseNum} 📌`);
    }

    function addVerse() {
        const textInput = document.getElementById('verse-text').value.trim();
        if (!textInput) {
            alert('Lütfən mətni yazın!');
            return;
        }

        let data = getStorageData();
        if (!data[currentSurahIndex]) data[currentSurahIndex] = [];

        const lines = textInput.split('\n');
        let addedCount = 0;

        lines.forEach(line => {
            const trimmed = line.trim();
            if (!trimmed) return;

            const match = trimmed.match(/^(\d+)[\.\-\:\)]?\s*(.+)$/);
            if (match) {
                const num = parseInt(match[1]);
                const text = match[2].trim();

                data[currentSurahIndex] = data[currentSurahIndex].filter(v => Number(v.num) !== Number(num));
                data[currentSurahIndex].push({ num: num, text: text });
                addedCount++;
            }
        });

        if (addedCount === 0) {
            alert('Ayə nömrəsi tapılmadı! (Məsələn: 7. Mətn...)');
            return;
        }

        data[currentSurahIndex].sort((a, b) => a.num - b.num);
        localStorage.setItem('quran_data', JSON.stringify(data));

        document.getElementById('verse-text').value = '';
        loadVerses();
        alert(`${addedCount} ayə əlavə olundu!`);
    }

    function loadVerses(filterQuery = '') {
        const container = document.getElementById('verses-container');
        container.innerHTML = '';
        let data = getStorageData();
        let verses = data[currentSurahIndex] || [];
        const bookmark = getBookmark();

        if (filterQuery) {
            verses = verses.filter(v => v.num.toString().includes(filterQuery) || v.text.toLowerCase().includes(filterQuery.toLowerCase()));
        }

        if (verses.length === 0) {
            container.innerHTML = '<div class="empty-state">Bu surədə hələ ayə yoxdur. Üst paneldən əlavə edə bilərsən.</div>';
            return;
        }

        verses.forEach((verse) => {
            const isBookmarked = bookmark && Number(bookmark.surah) === Number(currentSurahIndex) && Number(bookmark.verse) === Number(verse.num);
            
            const div = document.createElement('div');
            div.className = `verse-card ${isBookmarked ? 'bookmarked-verse' : ''}`;
            div.innerHTML = `
                <div class="verse-header">
                    <span class="verse-number">AYƏ ${verse.num} ${isBookmarked ? '📌 (Qaldığın yer)' : ''}</span>
                    <div class="verse-actions">
                        <button class="action-btn btn-bookmark" onclick="setBookmark(${verse.num})">${isBookmarked ? '📌 Qaldığım yer' : '📍 Burada qaldım'}</button>
                        <button class="action-btn btn-copy" onclick="copyVerse('${verse.num}', \`${verse.text}\`)">📋 Kopyala</button>
                        <button class="action-btn btn-delete" onclick="deleteVerseByNum(${verse.num})">🗑️ Sil</button>
                    </div>
                </div>
                <p class="verse-text">${verse.text}</p>
            `;
            container.appendChild(div);
        });
    }

    function filterVerses() {
        loadVerses(document.getElementById('verse-search').value.trim());
    }

    function copyVerse(num, text) {
        const surahName = surahNames[currentSurahIndex - 1];
        const fullText = `${currentSurahIndex}. ${surahName}, ${num}-ci ayə:\n${text}`;
        navigator.clipboard.writeText(fullText);
        alert('Ayə kopyalandı!');
    }

    function copyAllVerses() {
        let data = getStorageData();
        let verses = data[currentSurahIndex] || [];
        if (verses.length === 0) {
            alert('Kopyalanacaq ayə yoxdur!');
            return;
        }
        const surahName = surahNames[currentSurahIndex - 1];
        let fullText = `${currentSurahIndex}. ${surahName} Surəsi:\n\n`;
        verses.forEach(v => {
            fullText += `${v.num}. ${v.text}\n\n`;
        });
        navigator.clipboard.writeText(fullText);
        alert('Surənin bütün ayələri yaddaşa kopyalandı!');
    }

    function clearAllVerses() {
        if(!confirm('Bu surənin bütün ayələri silinsin?')) return;
        let data = getStorageData();
        if (data[currentSurahIndex]) {
            delete data[currentSurahIndex];
            localStorage.setItem('quran_data', JSON.stringify(data));
            loadVerses();
            alert('Surə təmizləndi!');
        }
    }

    function deleteVerseByNum(verseNum) {
        if(!confirm('Bu ayəni silmək istəyirsən?')) return;
        let data = getStorageData();
        if (data[currentSurahIndex]) {
            data[currentSurahIndex] = data[currentSurahIndex].filter(v => Number(v.num) !== Number(verseNum));
            localStorage.setItem('quran_data', JSON.stringify(data));
            loadVerses(document.getElementById('verse-search-box') ? document.getElementById('verse-search-box').value.trim() : '');
        }
    }
</script>
</body>
</html>

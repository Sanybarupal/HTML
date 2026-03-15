$names = Get-ChildItem -Path "c:\Users\boysa\Downloads\HTML" -Directory | Where-Object { $_.Name -match '^\d{2}-' } | Sort-Object Name | Select-Object -ExpandProperty Name

foreach ($folder in $names) {
    $i = [array]::IndexOf($names, $folder)
    $title = (($folder -replace '^\d{2}-', '' -replace '-', ' ').Split(' ') | ForEach-Object { if ($_) { $_.Substring(0,1).ToUpper() + $_.Substring(1) } }) -join ' '
    
    $prev = if ($i -gt 0) { "[⬅️ पिछला]($($names[$i-1])/README.md)" } else { '' }
    $next = if ($i -lt $names.Count-1) { "[➡️ अगला]($($names[$i+1])/README.md)" } else { '' }
    $nav = "$prev" + (if($prev -and $next) { ' | ' } else { '' }) + "$next"
    
    $content = @"
# 📘 $title

> **इस chapter में हम सीखेंगे कि $title क्या है, ये कैसे काम करता है, और इसे practical तरीके से कैसे use करते हैं।**

---

## 📌 Overview

यह lesson $title के बारे में basic concepts समझाएगा और examples के जरिए आपको hands-on practice देगा। ध्यान रखें कि ये सिर्फ एक start है — practice करने से ही mastery आता है।

---

## 📌 Key Concepts

- $title से संबंधित मुख्य points को समझो
- Semantic और structured HTML लिखना सीखो
- Browser में code कैसे render होता है
- Accessibility और सही markup का महत्व

---

## 🧩 Example

नीचे एक basic example है जो $title से जुड़े मुख्य tags को दिखाता है:

```html
<!-- इस example को अपने editor में copy करके चलाओ -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$title Example</title>
</head>
<body>
  <h1>$title Example</h1>
  <p>यह section $title से related basic example दिखाता है।</p>
</body>
</html>
```

---

## 🧪 Practice Tasks

1. ऊपर दिए example को copy करो और अपने computer पर `index.html` में save करो।
2. Example को modify करो (text change करो, नए elements add करो)।
3. Browser में open करके result देखो और changes verify करो।

---

## 📌 W3Schools Reference

W3Schools पर "$title" या related topic search करके interactive examples देखो। वहां "Try it Yourself" editor से आप तुरंत code बदलकर output देख सकते हो।

**Hinglish:** W3Schools par "$title" ke examples aur explanations milte hain. Aap unko follow karke जल्दी सीख सकते हो।

---

"@ + $nav

    $content | Set-Content -Path "c:\Users\boysa\Downloads\HTML\$folder\README.md" -Encoding UTF8
}
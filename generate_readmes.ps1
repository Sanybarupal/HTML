$dirs = Get-ChildItem -Directory -Path . | Sort-Object Name
$names = $dirs | ForEach-Object { $_.Name }
for ($i = 0; $i -lt $names.Count; $i++) {
    $folder = $names[$i]
    $title = ($folder -replace '^\d+\-', '') -replace '-', ' '
    $title = ($title -split ' ') | ForEach-Object { if ($_ -ne '') { $_.Substring(0,1).ToUpper() + $_.Substring(1) } else { $_ } } -join ' '

    $prev = ''
    $next = ''
    if ($i -gt 0) { $prev = "[⬅️ पिछला]($($names[$i-1])/README.md)" }
    if ($i -lt $names.Count - 1) { $next = "[➡️ अगला]($($names[$i+1])/README.md)" }
    $nav = $prev
    if ($prev -and $next) { $nav += ' | ' }
    $nav += $next

    $readmePath = Join-Path -Path $folder -ChildPath 'README.md'

    $content = @"# 📘 $title

> **इस chapter में हम सीखेंगे कि $title क्या है, ये कैसे काम करता है, और इसे practical तरीके से कैसे use करते हैं।**

---

## 📌 Overview

यह lesson `$title` के बारे में basic concepts समझाएगा और examples के जरिए आपको hands-on practice देगा। ध्यान रखें कि ये सिर्फ एक start है — practice करने से ही mastery आता है।

---

## 📌 Key Concepts

- $title से संबंधित मुख्य points को समझो
- Semantic और structured HTML लिखना सीखो
- Browser में code कैसे render होता है
- Accessibility और सही markup का महत्व

---

## 🧩 Example

नीचे एक basic example है जो `$title` से जुड़े मुख्य tags को दिखाता है:

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

$nav
"@

    Set-Content -Path $readmePath -Value $content -Encoding utf8
}

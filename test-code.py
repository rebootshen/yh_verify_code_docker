import pytesseract as ts
print(ts.get_tesseract_version())
print(ts.get_languages())

img_fn ='2.png'
lang = 'eng'
text = ts.image_to_string(img_fn, lang)
print(text)
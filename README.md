# GREPFOR.sh
## USE
```bash
bash grepfor.sh <file of white-space separated terms to grep for> <file to grep>
```
### OR
Let `grepfor` prompt you for both:
```bash
% bash grepfor.sh

            :-- GREP FOR --:

:-- Enter the to-grep list (should be a file w/ new-line separated strings):
grepterms.txt
:-- Enter the file to grep:
/usr/share/dict/words

:-- Starting...
:-- Grepping for  apples
2 results:

applesauce
sapples

:-- Grepping for tax
219 results:

acroataxia
aerotaxis
amyotaxia
anemotaxis
angioataxia
...
```


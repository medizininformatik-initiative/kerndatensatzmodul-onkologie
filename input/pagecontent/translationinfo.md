<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/translationinfo.md; the
     mechanism is documented in docs/recipes/add-translation.md. German mirror:
     input/translations/de/pagecontent/translationinfo.md. -->

This guide is written in **English** (the default language); **German** is the
translation. English is therefore both the base rendering of the guide and the
`/en/` rendering; use the language switcher at the top right to move between
`/en/` and `/de/`.

Translated pages live under `input/translations/de/pagecontent/` (same file name
as the English page); resource translations are `.po` files under
`input/translations/de/`. Details:
[`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/main/docs/recipes/add-translation.md) in this repository.

**Translation coverage of this module:** every narrative page of this guide
exists in both languages (English source, German mirror — including the
migration, TNM, therapy-goals and researcher-guidance pages). At artifact
level, the profiles, extensions, ValueSets and CodeSystems carry German
`short`/`definition` translations via the module's Translation rulesets, and
the ImplementationGuide resource itself is translated through its `.po` file.
The German edition is therefore content-complete; wording refinements of
machine-assisted passages are tracked as internal review comments in the
sources.

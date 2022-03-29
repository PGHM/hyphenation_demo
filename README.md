This is a project to demonstrate how hyphenation is broken in iOS15 when soft hyphens are present in words.

In any app running on iOS15 any text with soft hyphens will get automatically hyphenated also in other positions than the soft hyphenated positions when there is at least one soft hyphen present in the word. This happens in UILabels as well as notifications.

So if you have a long word, for example "Uncopyrightable" and we have a soft hyphen so that it would look like this "Un-copyrightable" it can also look like this "Uncopy-rightable" or "Uncopyright-able" even when there is only one soft hyphen present.

This project uses nice Finnish words to demonstrate the effect.

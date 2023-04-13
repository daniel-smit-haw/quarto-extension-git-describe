# Git-describe Extension For Quarto

This shortcode runs [`git describe --dirty`](https://git-scm.com/docs/git-describe) and returns the output. 

## Installing

```bash
quarto add daniel-smit-haw/quarto-extension-git-describe
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

`git` itself has to be installed.

## Using

Add the shortcode `{{{< git-describe >}}}` to your quarto files.

Note that `git describe` itself will only produce an output if a suitable ref is available.
The option `--dirty` will append a `-dirty` to the description if the working tree has local modifications see [the documentation](https://git-scm.com/docs/git-describe#Documentation/git-describe.txt---dirtyltmarkgt). 

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).


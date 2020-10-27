### System Info
MacOS 10.15.6

### Ruby Version
```bash
~/.../devo/ideas on gh-pages*
$ rbenv version
2.6.5 (set by /Users/johnbreedlove/Sync/devo/ideas/.ruby-version)
```

### Gemfile
```ruby
gem "github-pages", "~> 209"
```

### Jekyll Output
```bash
~/.../devo/ideas on gh-pages*
$ bundle exec jekyll serve
Configuration file: /Users/johnbreedlove/Sync/devo/ideas/_config.yml
            Source: /Users/johnbreedlove/Sync/devo/ideas
       Destination: /Users/johnbreedlove/Sync/devo/ideas/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
                    done in 0.616 seconds.
 Auto-regeneration: enabled for '/Users/johnbreedlove/Sync/devo/ideas'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```

### Directory Structure
```bash
~/.../devo/ideas on gh-pages*
$ tree
.
├── Gemfile
├── Gemfile.lock
├── _config.yml
├── _site
│   ├── assets
│   │   ├── css
│   │   │   └── style.css
│   │   ├── fonts
│   │   │   ├──...
│   │   ├── img
│   │   │   └── logo.png
│   │   └── js
│   │       └── scale.fix.js
│   ├── index.html
│   └── local-jekyll-build-theme-trouble.md
├── index.md
└── local-jekyll-build-theme-trouble.md

10 directories, 30 files
```

### Contents of /index.md
```markdown
---
---
# icanhaz themes pls?

must I use YAML frontmatter?
```
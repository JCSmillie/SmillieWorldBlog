# Smillie World Blog

This site uses [Hugo](https://gohugo.io/) and stores posts as Markdown files in `content/posts/`.

## Everyday workflow

Start the local preview server:

```bash
cd ~/GitHub/SmillieWorldBlog
hugo server -D
```

Then open <http://localhost:1313>.

Create a new post from a title:

```bash
./scripts/new-post.sh "My New Post"
```

That creates a Markdown file in `content/posts/` using a slug based on the title.

Edit the post file and set `draft = false` when you want it to publish.

Build the static site:

```bash
hugo
```

The generated site is written to `public/`.

## Manual post creation

If you want to create a post the Hugo way directly:

```bash
hugo new content posts/my-new-post.md
```

## Where things live

- `content/posts/` - blog posts
- `content/about.md` - about page
- `content/speaking/` - speaking page
- `hugo.toml` - site config
- `themes/hugo-vitae/` - Hugo theme

## Publishing notes

- `draft = true` means the post shows up in `hugo server -D` but not in a normal `hugo` build.
- If you move the repo to another machine, make sure the `themes/hugo-vitae` submodule is available.

## GitHub Pages

This repo is set up to deploy with GitHub Actions.

1. Create a GitHub repository.
2. Add it as the remote:

```bash
git remote add origin git@github.com:YOUR-USERNAME/YOUR-REPO.git
```

3. Commit and push:

```bash
git add .
git commit -m "Initial Hugo blog"
git push -u origin main
```

4. On GitHub, open `Settings -> Pages` and set the source to `GitHub Actions`.

If this is a user site, name the repository `YOUR-USERNAME.github.io`.

## Custom blog domain

If you want this site to live at `blog.smilliefamily.net`:

1. Push this repo to GitHub.
2. In the repository on GitHub, open `Settings -> Pages`.
3. Set the source to `GitHub Actions`.
4. Under `Custom domain`, enter `blog.smilliefamily.net`.
5. In your DNS provider, create a `CNAME` record:

```text
blog.smilliefamily.net -> jcsmillie.github.io
```

Your temporary/default GitHub Pages URL will be:

```text
https://jcsmillie.github.io/SmillieWorldBlog/
```

After the custom domain is active, the site should be served from:

```text
https://blog.smilliefamily.net/
```

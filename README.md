# GitHub Actions Runner with DNS Utils

This project extends the official GitHub Actions runner image to include bind-utils (specifically the `dig` command) for DNS troubleshooting and testing.

## Image

The image is automatically built and pushed to GitHub Container Registry as:
- `ghcr.io/mikesplain/runner:latest`

## Usage

Use this image as you would the standard GitHub Actions runner, with the added benefit of having DNS utilities available.

### Example with dig command

```bash
dig example.com
dig @8.8.8.8 example.com MX
```

## Building Locally

```bash
docker build -t runner .
```

## Automatic Builds

The image is automatically built and pushed to GHCR on:
- Push to main branch
- Manual workflow dispatch

## Base Image

This extends the official `ghcr.io/actions/actions-runner:latest` image with additional DNS utilities.
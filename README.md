# X/Twitter Video Downloader
<p align="center">
  <a href="https://github.com/Lucasyao1985/x-video-downloader">GitHub</a> | <a href="SKILL.md">SKILL.md</a>
</p>
<p align="center">
  <a href="https://github.com/Lucasyao1985/x-video-downloader"><img alt="Release version" src="https://img.shields.io/github/v/release/Lucasyao1985/x-video-downloader?color=2da44e&label=Latest&style=for-the-badge" /></a>
  <a href="https://github.com/Lucasyao1985/x-video-downloader/commits"><img alt="Last commit" src="https://img.shields.io/github/last-commit/Lucasyao1985/x-video-downloader?color=0969da&label=Last%20commit&style=for-the-badge" /></a>
  <a href="README.zh-CN.md"><img alt="中文" src="https://img.shields.io/badge/中文-da3633?style=for-the-badge" /></a>
  <a href="LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-2da44e?style=for-the-badge" /></a>
</p>

---

**X/Twitter Video Downloader is a [Claude Code](https://claude.ai) skill that automatically downloads videos from X/Twitter posts.** Provide a link, get the video saved to your specified location.

<table>
<tr><td><b>Direct video download</b></td><td>Extracts and downloads the video from any X/Twitter post containing media.</td></tr>
<tr><td><b>Custom output</b></td><td>Supports custom save path and filename for each download.</td></tr>
<tr><td><b>Auto-detection</b></td><td>Automatically identifies video URLs within X/Twitter links.</td></tr>
<tr><td><b>MP4 output</b></td><td>Downloads videos in standard MP4 format.</td></tr>
</table>

---

## Quick Install

```bash
git clone https://github.com/Lucasyao1985/x-video-downloader.git
```

Place the folder in your Claude Code skills directory:
- **Windows:** `C:\Users\<you>\.claude\skills\`
- **macOS/Linux:** `~/.claude/skills/`

## Usage

Share an X/Twitter URL with video:

```
Download this video: https://x.com/user/status/123
```

Or specify a save path:

```
Save this video https://x.com/user/status/123 to D:\videos\
```

The skill auto-detects the video media in the post and saves it to the specified location.

## How It Works

```
X/Twitter URL → [extract media URL] → [download] → MP4 file
```

The script parses the X/Twitter post, extracts the video media URL, downloads it, and saves it with the specified filename or a default name.

## Project Structure

```
x-video-downloader/
├── SKILL.md                 # Skill definition
├── README.md                # This file (English)
├── README.zh-CN.md          # Chinese documentation
├── scripts/
│   └── download.sh          # Core download script
└── references/
```

## License

MIT — see [LICENSE](LICENSE).

Built with [opencode](https://github.com/anomalyco/opencode).
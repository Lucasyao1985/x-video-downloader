# X/Twitter 视频下载器
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

**X/Twitter 视频下载器是一个 [Claude Code](https://claude.ai) 技能，自动下载 X/Twitter 帖子中的视频。** 提供链接即可保存视频到指定位置。

<table>
<tr><td><b>直接下载视频</b></td><td>从任意 X/Twitter 帖子中提取并下载视频。</td></tr>
<tr><td><b>自定义输出</b></td><td>支持自定义保存路径和文件名。</td></tr>
<tr><td><b>自动识别</b></td><td>自动检测 X/Twitter 链接中的视频媒体。</td></tr>
<tr><td><b>MP4 格式</b></td><td>下载为标准 MP4 视频文件。</td></tr>
</table>

---

## 快速安装

```bash
git clone https://github.com/Lucasyao1985/x-video-downloader.git
```

将文件夹放入 Claude Code skills 目录：
- **Windows:** `C:\Users\<你的用户名>\.claude\skills\`
- **macOS/Linux:** `~/.claude/skills/`

## 使用方法

向 Claude 分享包含视频的 X/Twitter 链接：

```
请下载这个视频：https://x.com/user/status/123
```

或者指定保存路径：

```
把这个视频保存到 D:\videos\：https://x.com/user/status/123
```

技能会自动解析帖子中的视频媒体并下载到指定位置。

## 工作原理

```
X/Twitter URL → [解析媒体 URL] → [下载] → MP4 文件
```

脚本解析 X/Twitter 帖子，提取视频媒体 URL，下载并以指定文件名保存。

## 项目结构

```
x-video-downloader/
├── SKILL.md                 # 技能定义文件
├── README.md                # 英文文档
├── README.zh-CN.md          # 中文文档
├── scripts/
│   └── download.sh          # 核心下载脚本
└── references/
```

## 许可证

MIT — 见 [LICENSE](LICENSE)。

由 [opencode](https://github.com/anomalyco/opencode) 构建。
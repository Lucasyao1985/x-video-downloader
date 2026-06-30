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

**X/Twitter 视频下载器是一个 [Claude Code](https://claude.ai) 技能，自动下载 X/Twitter 帖子中的视频，保存到指定位置。** 支持自定义保存路径和文件名。

## 功能特点

- 从 X/Twitter 帖子中提取视频
- 支持自定义保存路径和文件名
- 自动识别视频 URL 格式（x.com / twitter.com）
- 下载为标准 MP4 格式

---

## 快速安装

```bash
git clone https://github.com/Lucasyao1985/x-video-downloader.git
```

将文件夹放入 Claude Code skills 目录：
- **Windows:** `C:\Users\<你的用户名>\.claude\skills\`
- **macOS/Linux:** `~/.claude/skills/`

## 使用示例

向 Claude 发送以下指令：

```
请下载这个视频：https://x.com/user/status/123
```

或指定保存路径：

```
Save this video https://x.com/user/status/123 to D:\videos\
```

## 文件结构

```
x-video-downloader/
├── SKILL.md           # 技能定义文件
├── README.md          # 英文文档
├── README.zh-CN.md    # 中文文档
├── 说明.txt           # 使用说明
├── scripts/           # 执行脚本
│   └── download.sh    # 核心下载脚本
└── references/        # 参考资料
```

## 许可证

MIT — 见 [LICENSE](LICENSE)。

由 [opencode](https://github.com/anomalyco/opencode) 构建。
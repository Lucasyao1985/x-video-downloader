---
name: x-video-downloader
description: Download video from X/Twitter post. Use when user shares an X/Twitter URL with a video, asks to "download video", "save this video", "下载视频", or provides x.com/twitter.com URLs containing video media. Supports custom save path and filename.
metadata:
  author: Lucas
  version: 1.0.0
  input: X/Twitter URL + optional save path
  output: MP4 video file
---

# X/Twitter 视频下载器

自动下载 X（Twitter）帖子中的视频，保存到指定位置。

## 使用方式

用户提供 X/Twitter 链接时自动触发，下载视频到指定路径。

**示例触发语句：**
- "下载这个视频 https://x.com/user/status/123"
- "下载 https://x.com/user/status/123 视频"
- "Save this video https://x.com/user/status/123"
- 用户直接粘贴 X/Twitter URL 并提到"下载"、"视频"、"download"、"video"

## 工作流程

### Step 1: 解析 URL
从用户输入中提取 X/Twitter URL，识别用户名和帖子 ID。

格式：`https://x.com/{username}/status/{tweetId}` 或 `https://twitter.com/{username}/status/{tweetId}`

### Step 2: 获取视频元数据
使用 WebFetch 调用 fxtwitter API：
```
https://api.fxtwitter.com/{username}/status/{tweetId}
```

解析响应中的 `tweet.media.videos` 数组，取最高分辨率的视频。

### Step 3: 确定保存路径
- 如果用户指定了路径，使用该路径
- 如果用户指定了文件名，使用该文件名
- 默认文件名：`{username}_{tweetId}.mp4`
- 默认路径：用户桌面

### Step 4: 下载视频
使用 Bash 执行 curl 下载：
```bash
curl -L -o "{save_path}" "{video_url}"
```

### Step 5: 验证下载
检查文件大小，确认下载成功。

## 默认保存路径

用户桌面：`C:\Users\Lucas\Desktop\`

用户可通过参数指定路径，例如：
- "下载到 D:\Videos"
- "保存到 C:\Users\Lucas\Desktop\601"

## 输出格式

```
✅ 视频已下载
- 文件：{文件路径}
- 大小：{文件大小}
- 分辨率：{宽}x{高}
- 时长：{时长}秒
- 来源：@{username} — {推文原文前50字}
```

## 错误处理

| 错误场景 | 处理方式 |
|---------|---------|
| 帖子无视频 | 提示用户该帖子不包含视频，列出可用媒体类型 |
| API 请求失败 | 重试一次，仍失败则报告错误 |
| 网络超时 | 增加超时时间重试 |
| 磁盘空间不足 | 提示用户清理空间 |
| 路径不存在 | 自动创建目录 |

## 性能指标

- 总工具调用次数：2-3 次（WebFetch + Bash 下载 + 可选验证）
- 无需人工干预，完全自动化

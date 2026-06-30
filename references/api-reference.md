# fxtwitter API 参考

## 获取推文数据

```
GET https://api.fxtwitter.com/{username}/status/{tweetId}
```

### 响应结构

```json
{
  "code": 200,
  "message": "OK",
  "tweet": {
    "id": "推文ID",
    "text": "推文文本",
    "author": {
      "screen_name": "用户名",
      "name": "显示名称"
    },
    "media": {
      "videos": [
        {
          "id": "视频ID",
          "url": "最高分辨率视频URL",
          "duration": 81.502,
          "width": 720,
          "height": 1280,
          "formats": [
            {
              "url": "视频URL",
              "bitrate": 2176000,
              "container": "mp4",
              "codec": "h264"
            }
          ]
        }
      ]
    }
  }
}
```

### 视频选择策略

1. 优先选择 `formats` 数组中 `bitrate` 最高的 MP4 格式
2. 如果无 MP4，使用 HLS (m3u8) 流
3. 视频 URL 通常格式：`https://video.twimg.com/amplify_video/{videoId}/vid/avc1/{resolution}/{hash}.mp4?tag=27`

### 常见分辨率

| 分辨率 | 宽度 | 高度 | 典型码率 |
|-------|------|------|---------|
| 360p | 320 | 568 | 632 kbps |
| 480p | 480 | 852 | 950 kbps |
| 720p | 720 | 1280 | 2176 kbps |

## 错误响应

| 状态码 | 含义 |
|-------|------|
| 200 | 成功 |
| 404 | 推文不存在或已删除 |
| 403 | 推文来自私密账号 |
| 429 | 请求过于频繁 |
| 500 | 服务器错误 |

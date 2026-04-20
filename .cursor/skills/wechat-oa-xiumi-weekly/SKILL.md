---
name: wechat-oa-xiumi-weekly
description: >-
  Formats weekly AI (or tech) digest articles as WeChat Official Account-ready
  Markdown with Xiumi-friendly structure (headings, blockquotes, tables,
  section breaks). Use when the user asks for 微信公众号排版、秀米、一周速递、
  OA 推文 Markdown, or publishing workflow to mp.weixin.qq.com.
---

# WeChat OA Weekly Digest + Xiumi Workflow

## Output conventions

1. **Title vs H1**: The real push title is set in the WeChat backend (标题). The Markdown `#` line can mirror it or serve as the in-article masthead; keep both in sync when pasting.
2. **Xiumi / 135 / 壹伴**: Pure Markdown is not always preserved. Prefer structure that survives copy-paste:
   - Use `---` between logical "cards".
   - Use `> **Label**` for pull quotes / 导语.
   - Use Markdown tables for 一图速览; in Xiumi, restyle with a table template after import.
3. **Compliance**: Never invent product versions, benchmarks, or incident amounts. Always add a 编者声明 requiring editors to verify primary sources before群发.

## When generating content

- Put **使用说明** for 秀米 as an HTML comment at the top of the draft (see `strategy/strategy-dispatch/social-media/drafts/` examples).
- Include: 导语 blockquote, 30-second conclusions table, four mainlines with 本周看点 / 关系 / 延伸阅读, 风险提示, 互动 CTA, 参考来源表.

## Publishing (human steps — the agent cannot log in to WeChat)

The agent **cannot** authenticate to `mp.weixin.qq.com` or click群发 on the user's behalf.

**Editor workflow**

1. Open `https://mp.weixin.qq.com` in a browser where the user is already logged in (or scan QR to log in).
2. **新建图文消息** → paste content:
   - From Markdown: use a Markdown-to-WeChat plugin the user trusts, **or** render in Typora / VS Code preview and copy rich text into the editor / Xiumi.
3. If using **秀米 xiumi.us**: edit layout there → **同步到公众号** (requires binding the official account to Xiumi).
4. Set **封面、摘要、原创、赞赏、合集** in the MP backend; add **原文链接** if needed.
5. **预览**发送到手机 → proofread on a real device → **群发** or schedule.

## Repository reference drafts

- Example weekly draft path: `strategy/strategy-dispatch/social-media/drafts/wechat-weekly-ai-2026-04-13-04-19.md`

## Security

- Do not ask the user to paste passwords or cookies into chat.
- Do not store WeChat credentials in the repository.

#!/usr/bin/env bash
# 安装「找自己 · find-your-ikigai」skill
#
# 用法：
#   ./install.sh                              # 默认装到 WorkBuddy
#   ./install.sh ~/.claude/skills             # Claude Code
#   ./install.sh ~/.workbuddy/skills          # WorkBuddy
#   ./install.sh ~/.codex/skills              # Codex
#   ./install.sh .claude/skills               # 装到当前项目

set -e

SRC="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-$HOME/.workbuddy/skills}"
DEST="$TARGET/find-your-ikigai"

if [ ! -f "$SRC/SKILL.md" ]; then
  echo "错误：找不到 $SRC/SKILL.md，请在仓库根目录运行此脚本。" >&2
  exit 1
fi

mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$DEST/SKILL.md"

echo "已安装到：$DEST"
echo ""
echo "接下来在你的 AI 工具里说一句："
echo "  找自己"

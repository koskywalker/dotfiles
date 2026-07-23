# CLAUDE.md

Always respond in Japanese.

## ローカル開発のポート割り当て

- workerd の V8 インスペクタポート（`wrangler dev` の `--inspector-port` / `@cloudflare/vite-plugin` の `inspectorPort`）は、既定の 9229/9230 を使わず、プロジェクトごとに 10 幅の帯を割り当てて明示的にピンする。9229/9230 は「未所有の一時枠」として空けておく。
- 新しいプロジェクトの帯を決めるときは、既存プロジェクトのピン済みポートと重複しない次の空き帯（+10 ずつ）を選ぶ。使用中の帯は各リポの `vite.config.ts` / `package.json` から確認できる。
- 例: あるプロジェクトが 9310/9311 を使うなら、次のプロジェクトは 9320/9321。

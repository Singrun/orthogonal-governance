# 正交治理：超大型系统的熵减工程学 (Orthogonal Governance)

![Link Check](https://github.com/Singrun/orthogonal-governance/actions/workflows/link-check.yml/badge.svg)
![Codespell](https://github.com/Singrun/orthogonal-governance/actions/workflows/codespell.yml/badge.svg)
![Markdownlint](https://github.com/Singrun/orthogonal-governance/actions/workflows/markdownlint.yml/badge.svg)
![Build PDF](https://github.com/Singrun/orthogonal-governance/actions/workflows/build-pdf.yml/badge.svg)

## 为什么你的 KPI 全绿，但系统正在崩溃？

这不是一本给 CEO 看的管理鸡汤，这是一本给系统构建者看的病理学报告。我们用控制论、博弈论和热力学，解构大型组织与复杂技术系统为何会走向“高熵有序”的死寂，并提出“正交治理”作为反熵增、重启活性的工程化方案。

## 为什么选择 GitHub
- 用户画像完全匹配：程序员、SRE、架构师、系统思维者
- Docs as Code：把“书”当成可演进的工程项目
- 开源协作：Issue/PR 带来真实案例、数学修正和观点辩论

## 如何阅读
- 从导论开始理解方法论与总体公式
- 按章展开具体病理与工程化对策
- 参考附录中的形式化推导与模型证明
- 完整目录见 [docs/_toc.md](docs/_toc.md)

## 获取 PDF
- 在线构建：每次推送后，GitHub Actions 将在 “Build Book PDF” 工作流产出 Orthogonal-Governance.pdf（Artifacts 可下载）
- 本地构建（macOS/Linux）：
  - 安装 pandoc 与 xelatex（macOS 可使用 Homebrew；Linux 参考工作流依赖）
  - 执行：
    - `./scripts/build_book.sh`
    - `make pdf`
  - 生成文件位于 `build/Orthogonal-Governance.pdf`
 - 固定下载路径（自动更新）：[docs/Orthogonal-Governance.pdf](docs/Orthogonal-Governance.pdf)

## 发布与版本
- 版本文件：VERSION（当前版本）
- 变更记录：参见 [CHANGELOG.md](CHANGELOG.md)
- 发布方式：打标签并推送
  - `git tag v0.1.0`
  - `git push origin v0.1.0`
- 工作流会：
  - 构建并更新固定路径 PDF
  - 创建 GitHub Release 并附带 PDF 资产

## 核心概念
- 共线性陷阱：当审计与业务共享坐标系，监督沦为同谋
- CSI 指数：衡量组织离“合谋均衡”的距离
- 人本观察轴：在算法暴政下保留“拔插头”的权力
- OGI 指数：对抗衰减的组织正交性度量
- T2 通道阻塞：信息与反馈在二级通道的系统性堵塞
- 系统相变：从可逆到不可逆的演化拐点

## 仓库结构
```
orthogonal-governance/
├── README.md           # 项目宣言（Manifesto）
├── docs/               # 规范化文件名的章节/附录/专题
│   └── _toc.md         # 目录与链接映射（规范化阅读入口）
├── glossary.md         # 术语表（CSI、OGI、高熵有序等）
├── cases/              # 真实案例（匿名化提交指南）
├── .github/            # Issue/PR 模板与工作流
└── LICENSE             # CC-BY-NC-SA 4.0
```

## 如何参与
- 欢迎理性辩论与严谨修正；请遵循本仓库的贡献与行为规范
- Issue 标签建议：
  - Case Study（案例征集）
  - Math Check（数学修正）
  - Debate（观点辩论）
- 提交指南：参见 [cases/README.md](cases/README.md)
- 贡献规范：参见 [CONTRIBUTING.md](CONTRIBUTING.md)
- 行为准则：参见 [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)

## 许可协议
本项目采用 CC BY-NC-SA 4.0（署名-非商业性使用-相同方式共享）许可，禁止商业用途；允许在保持署名与相同许可的前提下进行非商业性的复制与改编。详见 [LICENSE](LICENSE)。

## 商业授权
如需商业使用或授权，请联系：singrun@gmail.com

## 致谢
感谢所有在复杂系统中坚持诚实与独立性的人；你们提供的案例、推导与反思，是本项目持续演进的源动力。

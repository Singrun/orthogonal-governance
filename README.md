# 正交治理：超大型系统的熵减工程学 (Orthogonal Governance)

![CI Status](https://github.com/Singrun/orthogonal-governance/actions/workflows/build-pdf.yml/badge.svg)

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
- **共线性陷阱 (Collinearity Trap)**：当审计与业务共享坐标系，监督沦为同谋，导致盲区重叠。
- **CSI 指数 (Collusion Susceptibility Index)**：衡量组织离“合谋均衡”的距离，预测系统性腐败的概率。
- **正交治理 (Orthogonal Governance)**：通过引入独立的观测与阻尼机制，防止系统滑向热力学平衡态（死寂）。
- **T2 通道阻塞 (Tier-2 Block)**：信息在非正式网络中流动，但在正式反馈回路中被截断的现象。
- **高熵有序 (High-Entropy Order)**：表面规则井然、数据完美，实质上信息失真、创新停滞的临界状态。

## 🎯 读者画像

这本书适合：
- **系统架构师**：寻找技术债务背后的组织根源。
- **SRE / 运维专家**：理解为什么“人为失误”总是制度问题的替罪羊。
- **中高层管理者**：苦恼于“为什么团队规模扩大了，效率却降低了”。
- **反熵增斗士**：在僵化的体制中试图保持清醒与活力的个体。

这本书**不适合**：
- 寻找“30天速成管理大师”秘籍的人。
- 坚信“只要执行力够强，一切问题都能解决”的人。
- 认为“和谐”高于“真相”的人。

## ⚠️ 关于“非主流”视角的说明

本书采用的分析框架（控制论、热力学、博弈论）可能与主流管理学（如彼得·德鲁克或MBA课程）的范式大相径庭。

我们不追求“和谐”与“上下同欲”，而是强调**正交性**、**对抗**与**阻尼**在维持系统活性中的必要性。这并非为了标新立异，而是基于对复杂系统“高熵有序”病理的物理学诊断。

如果您发现本书的观点具有破坏性或反直觉，请将其视为一种**压力测试（Stress Test）**：如果您的系统连逻辑上的挑战都无法承受，它又如何承受现实世界的混沌？

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

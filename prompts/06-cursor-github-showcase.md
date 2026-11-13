# Cursor prompt: turn this repo into a public GitHub showcase

How to use: open this repo in Cursor (agent mode), paste the block below. Cursor reads the rest of this file.

## Paste this into Cursor

```
Read prompts/06-cursor-github-showcase.md and follow it exactly.
Read CLAUDE.md and README.md first. Their rules bind you.
Target role: AI Deployment Manager.
Stop at every "STOP" and wait for my answer.
```

---

## Goal

Make a public GitHub repo that a hiring manager for an AI Deployment Manager role can skim in 3 minutes, and that an engineer can run in 10. It must show two things:
1. I can evaluate, explain and deploy-think about ML models with discipline (baselines, no leakage, honest metrics, human oversight).
2. I work with AI agents in a controlled, transparent way, and Cursor agents were part of that work.

Opinion, not fact: the second point is the stronger signal. Most candidates cannot show how they govern AI use. This repo can, because it has AI-use logs and review gates for every graded notebook.

## Honesty rules (non-negotiable)

The Cursor story must be true and checkable. A hiring manager may click every link.
- Do not claim Cursor for work another tool did. Read the evidence first: `git log` (look for `Co-authored-by: Cursor <cursoragent@cursor.com>` and `Co-Authored-By: Claude`), every `ai-use-log.md`, and the disclosure cell in each notebook.
- Known from the logs (verify, do not trust this list blindly): repo setup, Hands-on 1, Hands-on 2 and Homework 1 were done with Claude (Claude Code, and claude.ai for Hands-on 2). Block 2 (Lectures 3 to 5, Hands-on 3 and 4, Homework 2) was started with Cursor agents. This packaging task is done with Cursor.
- Never edit old disclosure cells, old logs or old commit messages to change who did what. Never rewrite attribution.
- Write the provenance as a table: component, tool, model, what the human did. If I used both tools on one item, say both.
- Ask me for the exact Cursor model name per item. Do not guess model names.
- Do not invent screenshots, chat transcripts or metrics. Evidence comes from git, logs, and files I provide.
- No claims of production deployment. This is coursework plus small applied projects. Label it as such.
- Every commit you make in this task ends with the trailer already used in this repo: `Co-authored-by: Cursor <cursoragent@cursor.com>`.

## Step 0: Get up to speed (read only)

Read `CLAUDE.md`, `README.md`, `prompts/`, the three `ai-use-log.md` files plus any new ones for HO3, HO4 and HW2, `requirements.txt`, `.gitignore`, and `git log`. Then report in 10 lines or fewer: what exists, what is already strong for the target role, and what is weak. Do not edit yet.

## Step 1: Publish-risk audit, then STOP

Report each risk with the exact files. Do not fix anything yet. Known risks to check:
- **Course materials.** `course/` is tracked and holds the lecturer's notebooks, images, data, books and papers (for example `mml-book.pdf`, `AutoML_Book.pdf`, many reference PDFs) and the instructor solution `Lecture 2_hand_ons_solution.txt`. Publishing these is likely a copyright and academic-integrity problem. Count the files and the size.
- **Graded solutions.** `handson/`, `homework/` and `notes/homework/` hold full solutions to assignments for a live course. Other students could copy them.
- **Personal and employer data.** `CLAUDE.md`, `prompts/00-kickoff.md` and `prompts/04-apply-to-my-work.md` mention my employer, my thesis, side projects and a private workflow. Search the whole history (all revisions, not only HEAD) for: enterprise AI adoption, email addresses, a personal side project, threshold, colleague names, any URL with a token.
- **Transcripts.** Redacted `.md` files may still hold the lecturer's words and traces of classmate names.
- **Noise.** `.scaffolding/`, `cache/`, `scratch/`, `.venv/`, checkpoints, `.Rhistory`, large outputs. Check notebook sizes and whether outputs render on GitHub.
- **Git identity.** Commit author email is `aly.metwaly@outlook.com`. Ask me whether that is what I want public, or whether to use the GitHub noreply address.
- **Missing.** No LICENSE, no remote, no `.cursor/` rules, no `AGENTS.md`.

Then ask me these decisions, one per line, with your recommended default first:
1. `course/` in the public repo? Recommended: no. Replace it with `course/README.md` that says what is not included and why.
2. Graded solution notebooks (HO1 to HO4, HW1, HW2) in the public repo? Recommended: not until grades are final and the lecturer agrees. Meanwhile publish approach write-ups, AI-use logs, results tables and the process, not the full solutions.
3. Mention my employer by name? Recommended: no. Say "enterprise AI adoption" instead.
4. Public author email: outlook or GitHub noreply?
5. License: MIT for my own code and notes, with course material excluded? Recommended: yes.

## Step 2: Build the public copy (never touch the private repo's history)

- This repo stays private and unchanged. Build the public repo as a separate copy.
- Make a fresh clone in a sibling folder, for example `..\ml-data-mining-showcase`.
- In the clone only, remove paths I decided to exclude. Prefer `git filter-repo` so the commit history, including the Cursor and Claude trailers, survives without the removed files. Ask before installing it, and install it into `.venv` only. Keep a path list in `scripts/public-paths.txt` so the export is repeatable.
- After filtering, grep every revision for the strings from Step 1. Zero hits required.
- Do not create the GitHub repo. Do not add a remote. Do not push. I do that after review, and you give me the exact commands.

## Step 3: Make the public repo worth reading

Work in the clone. Keep every claim backed by a file in the repo. Writing style: answer first, short sentences, plain words, no em dashes, no hype, no emojis. Label Fact, Assumption and Opinion where it matters.

1. **README.md as the landing page.** In this order:
   - One line: who I am and what this is. Example: "ML and data mining coursework (Arcada MIND), built with AI agents under human review."
   - "What this repo shows": 4 to 5 bullets for an AI deployment role, each linked to evidence. For example: honest evaluation (baselines, CV, test set touched once), data leakage awareness, human review thresholds, reproducible environment, AI-use audit trail.
   - "Built with Cursor and Claude": the provenance table from the honesty rules, plus 3 to 5 clickable proofs (commits with the Cursor trailer, an AI-use log, the Cursor rules file).
   - Results at a glance: a small table with real numbers copied from the logs and outputs. Check each number against the notebook output.
   - Repo map and a 5-line quick start for Windows PowerShell.
   - Scope note: coursework, not production.
2. **Agent setup that is visible and real.**
   - `.cursor/rules/*.mdc`: port the rules from `CLAUDE.md` (coach mode, folder rules, pre-submit check, AI disclosure, writing style, privacy). Use rule files an agent would really load. Keep `CLAUDE.md` content equivalent but public-safe.
   - `AGENTS.md`: short operating rules for any agent.
   - Public-safe `CLAUDE.md`: remove employer, side projects and thesis detail unless I said otherwise.
3. **`docs/ai-workflow.md`.** How I work with agents: roles (human decides and verifies; Claude Code and Cursor agents plan, write and review), the gates (coach mode, pre-submit check, AI-use log, disclosure cell), a Mermaid diagram of the loop, and what went wrong and how it was caught. Real examples only, for example the Hands-on 2 review where the test set was scored twice, and the Homework 1 Matplotlib error. Say that the Cursor handover prompt was written with Claude Code and run by a Cursor agent. That is true and it shows a multi-agent workflow.
4. **`docs/deployment-lens.md`.** For each assignment block, 3 to 5 bullets: if this model were deployed, what would you monitor, what would fail first, where would a human review. Mark all of it as Opinion. Tie it to calibrated human oversight (my thesis) without naming my employer.
5. **One small applied project, only if I approve it.** Propose it at the end of Step 1. Suggested: `applied/human-review-threshold/`, one notebook on public or synthetic data. It shows how a classifier's confidence threshold trades review workload against missed errors. Under 2 hours of my time. Built with a Cursor agent, with its own `ai-use-log.md`.
6. **Hygiene.** LICENSE (per my answer). `.gitignore` check. Remove `.scaffolding/`, `cache/`, stray files. Keep notebook outputs so GitHub renders them, but flag any file over 5 MB. Add `scripts/smoke_test.ps1` that runs the lightest notebooks headless with `.venv`. Add a GitHub Actions workflow only if it passes locally and does not need secrets. If notebooks need big downloads, skip CI and say so.
7. **Cursor evidence folder.** Create `docs/cursor/README.md` that lists what evidence exists and where. Ask me to drop in real screenshots (Cursor agent chat, rules panel, a diff review) and, if I have them, exported chat summaries. Redact names, emails and anything about my employer. Reference only files that exist.

## Step 4: Verify before you say done

Report pass or fail for each:
- Fresh `git clone` of the public copy, `.venv` from `requirements.txt`, then the smoke test passes.
- README renders: every link and every relative path resolves. Mermaid renders.
- Zero hits in all revisions for the sensitive strings. List the exact search you ran.
- No file over 25 MB. No excluded path present. `git status` clean.
- Every number in README and docs matches a notebook output or log.
- Every Cursor claim has a link to evidence. Every Claude claim too.
- The private repo is unchanged: `git status` and `git log` match what they were before you started.

## Step 5: Handover to me

- Give me the exact PowerShell commands to create the GitHub repo and push the clean copy. Use `gh` if I have it. I run them. You do not.
- Suggest the repo description (one line), 5 topics, and what to pin on my profile.
- List what I still must do by hand: add screenshots, confirm model names, decide on publishing solutions after grades.
- Update `README.md` here (private repo): session log row and next action. Commit with the Cursor trailer.
- Tell me in 5 lines or fewer: what you did, what is blocked on me, and any risk left.

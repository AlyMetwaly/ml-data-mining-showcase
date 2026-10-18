# Kickoff prompt (paste into Claude Code once, from the course folder root)

Read CLAUDE.md first and follow it for this whole session.

Context: this folder is my Arcada course "Machine Learning and Data Mining". It currently holds Lecture1/, Lecture2/, Homework1.ipynb, Lecture1-transcript.docx, Lecture2-transcript.docx, plus CLAUDE.md, README.md, .gitignore and prompts/ that I just added. Turn it into a working study repo, then help me with urgent graded work.

## Phase 0: Inventory (read-only, change nothing)
1. List every file with size. For each lecture, name the primary notebook and say why.
2. Search all notebooks for hands-on tasks: cells containing "hands-on", "hands on", "exercise", "task", "your turn", "TODO", or "?" prompts in markdown. Report cell number and the task text in plain words.
3. Read and tell me what these are: `Lecture1/grading`, `Lecture2/Lecture 2_hand_ons_solution`, `Lecture1/tree.dot`. Do not use any solution content yet.
4. Read `Homework1.ipynb` fully. List each task, what is graded, what data it uses, and which lecture concept each task needs.
5. Convert both transcripts to markdown text. Note which time ranges they cover and list every warning or emphasis the lecturer gave.
6. Collect all imports across notebooks. Check whether the course follows Mueller and Guido (mglearn). Propose a pinned environment.
7. Check notebooks for relative paths that would break if each Lecture folder moves one level down (look for "../", absolute paths, "os.chdir").

Output: a short report. Then STOP and wait for my "go".

## Phase 1: Repo setup (after my "go")
1. `git init`. Create: `course/`, `notes/lectures/`, `notes/concepts/`, `handson/`, `homework/`, `applied/`, `scratch/`.
2. Move originals into `course/` as whole folders so internal paths survive: `course/Lecture1/`, `course/Lecture2/`, `course/homework/Homework1.ipynb`, `course/transcripts/`. Save the markdown transcripts next to the docx files.
3. Create the environment file. Tell me the exact commands to create and activate it on Windows. Do not install anything globally.
4. Update README.md with what Phase 0 found.
5. First commit.

## Phase 2: Hands-on 2 (deadline 21.10.2026 23:59)
1. Also check Hands-on 1 status with me.
2. Copy the needed notebook into `handson/HO2/`. Coach mode from CLAUDE.md.
3. Produce the submission file and an ai-use-log.md. Tell me what to upload on itslearning.

## Phase 3: Lecture notes
1. Write `notes/lectures/L01-supervised-learning.md` and `L02-...md` using the template.
2. Write one concept note per core concept (for example: train/test split, generalization, overfitting vs underfitting, k-NN, linear models, regularization, decision trees, ensembles, scaling, data leakage, PCA, clustering). Use the real list from the notebooks, not my examples.
3. Create `notes/cheatsheet.md`: one line per concept plus the key scikit-learn call.

## Phase 4: Homework 1 plan
1. Ask me if I have a partner.
2. Break Homework 1 into tasks. Map each to concept notes. Estimate time per task. Propose a schedule that finishes 2 days before the deadline.
3. Start task 1 in coach mode in `homework/HW1/`.

## Phase 5: Applied bridges
Create `applied/ideas.md` with 3 to 6 real ideas from Lectures 1 and 2, tagged QUICK WIN, PROJECT, or THESIS-GRADE. No employer data.

## Final check (mandatory, do not skip)
Building the repo is not the same as it working. Confirm, and report pass or fail for each:
- The environment activates with the commands you gave me.
- `jupyter lab` launched from the repo root opens the course notebooks.
- A copy of each primary lecture notebook runs Restart and Run All from its copied location in the default environment with no import or path errors. List any cell that fails and why.
- `course/` has zero modified files (`git status` shows them clean after commit).
Do not call the setup done until every item passes or I approve the exception.

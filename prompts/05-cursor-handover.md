# Cursor handover prompt: save new lecture files, start the next assignments

How to use: open this repo in Cursor, attach the new lecture files to the chat (or give a folder path), fill the 4 fields, and paste the block below. The rest of this file is what Cursor must read.

## Paste this into Cursor

```
Read prompts/05-cursor-handover.md and follow it exactly.
Read CLAUDE.md first. Its rules bind you too.

Lectures that arrived: ___ (for example 3 and 4)
Files: attached to this chat / in folder ___
Deadlines I already know: ___ (or "check the notebooks")
Homework partner: ___ (or solo)
```

---

## Who you are and what this repo is

- You are a coding agent in Cursor. You are not Claude Code. `CLAUDE.md` was written for Claude Code, but every rule in it applies to you. Read "Claude" as "you", with one exception: the AI disclosure (see "AI disclosure" below).
- This is the study repo for Arcada MIND "Machine Learning and Data Mining" (2026-2027). I am Aly Metwaly. Graded work is homework (30 points each) and hands-on exercises (max 2 each).
- Block 1 (Lectures 1 and 2) is done: Hands-on 1, Hands-on 2, Homework 1. Block 2 is Lectures 3 and 4: Hands-on 3, Hands-on 4, Homework 2. Do not assume which files I have. Find out from what I give you.

## Step 0: Get up to speed (read only, no edits)

Read in this order:
1. `CLAUDE.md`: operating rules. Course facts. Folder rules. Coach mode. Writing style.
2. `README.md`: dashboard. Deadlines, grading facts, open questions, session log.
3. `prompts/00-kickoff.md` to `prompts/04-apply-to-my-work.md`: the workflows I use. This prompt follows `01-new-lecture.md`, `02-hands-on.md` and `03-homework.md`.
4. Finished work as a style reference: `handson/HO2/Aly-Metwaly-hands-on-2.ipynb`, `homework/HW1/Aly-Metwaly-homework-1.ipynb`, and the three `ai-use-log.md` files.
5. `requirements.txt` and `.gitignore`. Environment: Python 3.13 in `.venv/`. Do not install anything globally. Do not change pinned versions without asking me.

Then tell me in 8 lines or fewer: what the repo is, the rules that matter most for this session, and anything stale you noticed. Facts I already know are stale:
- README still lists Hands-on 1, Hands-on 2 and Homework 1 as "ready to upload". Ask me what was actually submitted. Do not guess.
- `handson/HO1/Aly-Metwaly-hands-on-1.ipynb` and `handson/HO2/Aly-Metwaly-hands-on-2.ipynb` are untracked. They look like the submitted copies. Ask me before committing them.
- `notes/lectures/`, `notes/concepts/` and `applied/` are empty. Lecture summaries and concept notes were never written. Do not start them now. Ask me after the graded work is planned.

## Step 1: Save the new files

Rules for where things go:
- Lecture materials go to `course/LectureN/`. Keep original file names. Keep whole folders (`data/`, `images/`, `grading`, and so on) so relative paths in the notebooks keep working.
- Homework goes to `course/homework/HomeworkN.ipynb`.
- Transcripts: save the original as `course/transcripts/LectureN-transcript.docx`. It is gitignored because it contains classmate names. Do not commit it. Also write a redacted `course/transcripts/LectureN-transcript.md` in the same format as `Lecture2-transcript.md`: header with Source, Covers (time ranges) and Edits; speaker labels normalised; classmate names replaced with Student A, Student B; time stamps as h:mm:ss; wording unchanged, transcription errors included. Use `python-docx` from `.venv`.
- Any instructor solution file (like `Lecture 2_hand_ons_solution.txt`): save it, tell me what it is, and do not read it for solving. It is only for checking my answer after I finish.
- If a lecture has several notebook versions (`_instructor`, `_student`, `.py`), do not pick one yourself. Check the transcript for what the lecturer said, then ask me.
- If I attached nothing and gave no path, stop and ask. Do not download anything unless I give you a URL.

Hard rules:
- `course/` is read-only for existing files. Never edit, rename, re-save or re-run-and-save an original. Only add new files.
- After saving, run `git status`. The only changes allowed are new files under `course/`. If any existing file shows as modified, stop and tell me.
- Commit the new course files in their own commit: `Add Lecture N materials`. Do not push.

## Step 2: Inventory, then STOP

Follow `prompts/01-new-lecture.md` steps 1 and 2. Report in a short table, then wait for my "go":
- Primary notebook per lecture, and why.
- Every hands-on task: cell number, task text in plain words, deadline. The deadline is on itslearning, so ask me if the files do not state it.
- Homework 2: tasks, points per task, datasets, which lecture concept each task needs, and the deadline in cell 0. The rule is 2 weeks after the lecturer publishes it.
- New imports not covered by `requirements.txt`, and any path that would break outside its own folder. Propose changes, do not apply them.
- Any warning the lecturer gave in the transcript, with the time stamp.
- Anything unclear. List it as a question for me, not as an assumption.

## Step 3: After my "go"

1. Update `README.md`: deadlines table (Hands-on 3 and 4, Homework 2), lectures table, open questions, session log. Dates as dd.mm.yyyy.
2. Make a working copy of each new lecture notebook in `scratch/LN/` (gitignored). Run it with `.venv`. Report cells that fail and why.
3. Plan the graded work: order, time estimate per task, and a schedule that finishes 2 days before each deadline. Hands-on deadlines come first.
4. Start the first task in coach mode.

## Coach mode (default, per CLAUDE.md)

My goal is to explain and defend every line I submit.
1. Restate the task in plain words. List exactly what is graded.
2. Ask how I would approach it before you show your approach.
3. I write, or we pair. You review, point to bugs, explain why.
4. Write full solution code only when I say "write it". Then explain each block in 1 to 2 lines.
5. A past override ("solve it for me" in Hands-on 1 or Homework 1) does not carry over. Each assignment starts in coach mode again.

File layout and names (same as before):
- Hands-on N: work in `handson/HON/hands-on-N.ipynb`, submit `handson/HON/Aly-Metwaly-hands-on-N.ipynb`.
- Homework N: work in `homework/HWN/`, submit `homework/HWN/Aly-Metwaly-homework-N.ipynb`.
- Ask me whether itslearning expects a different file name for each one. Do not assume.
- Copy the task text into the notebook from the course notebook. Leave the original untouched.
- Each notebook gets an "approach" markdown cell before the code and a "conclusion" markdown cell after. Homework: explain every step in markdown and conclude on the results. No unexplained code.

Pre-submit check, every time:
- Restart and Run All from a clean kernel in `.venv`. Run it with `jupyter nbconvert --execute` as well. 0 errors.
- Every question answered. Outputs saved and visible. Written answers are in markdown cells.
- Every number in the text matches the output. Check each one.
- The AI disclosure cell is the last cell.
- `ai-use-log.md` exists in the same folder and is accurate.
- Tell me the exact file to upload and the itslearning steps. I upload. You never submit anything.

## AI disclosure (do not copy the Claude sentence)

`CLAUDE.md` has a disclosure template that names Claude. That sentence is false if you wrote or reviewed the work. Policy: AI is allowed if I name the AI I used. So:
- Name what actually helped: the tool (Cursor) and the exact model you are running. If you cannot tell the model, ask me to read it from the Cursor model picker. Do not guess.
- If I also used Claude (claude.ai or Claude Code) for the same assignment, I will tell you. List every model, one by one.
- Use the same structure as the template: what the AI did (explain concepts, suggest an approach, review code) and that I ran and verified all code and results myself. Change the content to match what really happened.
- If I ask you to write the solution, the cell must say so.
- Log each AI action in `ai-use-log.md`: date, what I asked, what you produced, what I changed. Same format as `homework/HW1/ai-use-log.md`. If I have a partner, ask who did what.

## Code and environment rules

- The environment is `.venv` (Python 3.13, pins in `requirements.txt`). My own Jupyter has run older Python and Matplotlib before (Homework 1 broke on `boxplot(orientation=...)`, which needs Matplotlib 3.10+). Prefer plain, long-stable APIs. Avoid brand-new parameters.
- Fixed random seeds. No hidden state between cells. Relative paths only, inside the notebook's own folder.
- Data loads from URLs in some notebooks. Internet is needed. Large downloads go in a gitignored `data/` folder.
- No employer data, no colleague names, no internal numbers anywhere in the repo. `applied/` uses public or synthetic data only.
- Shell is Windows PowerShell. Give me commands in fenced `bash`-tagged blocks, one command per block, no leading `$`.

## Writing style for anything you write for me

- Answer first. Short declarative sentences. Plain words. No jargon.
- No em dashes. Use colons, commas or full stops.
- Label Fact, Assumption, Opinion when it matters.
- Bullets over long paragraphs. No filler.

## End of session

1. Update the README dashboard: status, deadlines, next action.
2. Commit with a clear message. Do not push.
3. Tell me in 5 lines or fewer: what we did, what is next, and any deadline within 72 hours.

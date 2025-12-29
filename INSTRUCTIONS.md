# Instructions for Setting Up Your GitHub Repository

## What You Have

All files are ready in `/mnt/user-data/outputs/`:
- `setup_repo.sh` - Main setup script
- `README.md` - Repository documentation
- `LICENSE` - MIT license
- `.gitignore` - Git ignore file
- `calculate_hmi.py` - HMI calculation script
- `guardrail_failure_analysis.md` - Main analysis paper
- `technical_appendix_metrics.md` - Metrics framework

## Step 1: Copy Files to Your Home Directory

Open terminal on your Linux machine (prime) and run:

```bash
# Navigate to your home directory
cd ~

# Download the setup script from your outputs
# (You'll need to download these files from Claude first)

# Or if files are already local, just run:
chmod +x setup_repo.sh
./setup_repo.sh
```

## Step 2: Initialize Git

```bash
cd ~/AI-online-chat-logs-as-data-logs
git init
git add .
git commit -m "Initial commit: AI chat logs analysis framework"
```

## Step 3: Create GitHub Repository

1. Go to: https://github.com/new
2. Repository name: `AI-online-chat-logs-as-data-logs`
3. Description: "Empirical analysis of AI safety guardrail failure modes through documented chat logs. Quantifies harm multiplication (HMI=92.7), context flattening, and authority injection patterns."
4. Public repository
5. **DO NOT** initialize with README (you already have one)
6. Click "Create repository"

## Step 4: Push to GitHub

GitHub will show you commands. Use these:

```bash
cd ~/AI-online-chat-logs-as-data-logs
git remote add origin https://github.com/darkt22002/AI-online-chat-logs-as-data-logs.git
git branch -M main
git push -u origin main
```

## Step 5: Add Your Conversation Logs

Once the repo is live, you can add the actual conversation:

```bash
cd ~/AI-online-chat-logs-as-data-logs

# Copy your conversation log (you'll need to export this from ChatGPT/Claude)
# Save it as: data/raw/chatgpt/2025-12-28-guardrail-failure-session.md

# Or from Claude:
# Save as: data/raw/claude/2025-12-28-guardrail-failure-session.md

git add data/raw/
git commit -m "Add: December 28 guardrail failure conversation logs"
git push
```

## Testing the HMI Calculator

```bash
cd ~/AI-online-chat-logs-as-data-logs/analysis/scripts

# Test with your observed values
./calculate_hmi.py \
    --ttr 0.5 \
    --cfs 2.1 \
    --ifd 0.79 \
    --aaf 31.3 \
    --pmr inf \
    --efr 2.5 \
    --cci 15

# Expected output: HMI ≈ 92.7 (Critical)
```

## What Happens Next

Once pushed to GitHub:
- Repository is public
- Timestamped prior art established
- MIT license active
- Others can clone, fork, cite
- You can continue adding logs/analysis

## File Organization Tips

```
data/raw/chatgpt/
├── 2025-12-28-guardrail-failure-session.md
├── 2025-12-29-another-test.md
└── 2026-01-05-follow-up.md

data/raw/claude/
└── [future conversations]

data/processed/metrics/
└── session_metrics.csv  (create this as you analyze)
```

## Legal Notes

✓ You own your conversation content  
✓ Texas one-party consent applies  
✓ Fair use for research/commentary  
✓ No ToS violations  
✓ MIT license allows commercial use with attribution  

## Questions?

Everything is documented in:
- `README.md` - Main docs
- `QUICK_START.md` - Created by setup script
- `analysis/guardrail_failure_analysis.md` - Full analysis
- `analysis/technical_appendix_metrics.md` - Metrics details

---

**You're ready to go. Just run the setup script and push to GitHub.**

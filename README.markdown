# 🤖 ai-quizbot-jac: The Ultimate Quiz Experience (Team : GenSpark02)

Welcome to **ai-quizbot-jac**, a dynamic and intelligent quiz bot built with the Jac programming language! Whether you're a student, educator, or trivia enthusiast, this project offers two exciting modes:

- **Classic Quiz (Step 5):** A multi-level quiz game with a leaderboard for competitive fun.
- **AI-Powered Quiz (Step 6):** Enhanced with Gemini LLM for smart, educational feedback on wrong answers.

Perfect for learning, teaching, or building your own AI-powered chatbot! 🚀

---

## ✨ Features

- **Dual Quiz Modes:**
  - **Step 5:** Classic quiz with leaderboard, multi-difficulty levels, and instant scoring.
  - **Step 6:** AI-driven quiz with intelligent explanations for incorrect answers using Gemini LLM.
- **Multi-Level Questions:** Choose from Easy, Medium, or Hard questions across Maths, Science, History, and more.
- **Real-Time Feedback:** Get instant results and compete on the leaderboard (Step 5).
- **AI-Powered Learning:** Step 6 provides detailed explanations for wrong answers to deepen understanding.
- **Customizable & Extensible:** Easily add new questions, categories, or integrate your preferred LLM.
- **Terminal-Based CLI:** No browser needed—play directly in your terminal.
- **Open Source:** Free to use, modify, and share under the MIT License.

---

## 🛠️ Getting Started

Follow these steps to set up and start quizzing!

### 1. Clone the Repository

```bash
git clone https://github.com/Hushan-10/ai-quizbot-jac.git
cd ai-quizbot-jac
```

### 2. Install Jac Language

Ensure you have Python 3.7+ installed, then run:

```bash
pip install jac
```

### 3. (Optional) Set Up Gemini API Key for Step 6

For the AI-powered quiz (Step 6), you'll need a Gemini API key. Set it as an environment variable:

**For PowerShell (Windows):**

```powershell
$env:GEMINI_API_KEY = "your-actual-api-key-here"
```

**To set it permanently:**

```powershell
[System.Environment]::SetEnvironmentVariable('GEMINI_API_KEY', 'your-actual-api-key-here', 'User')
```

**Verify the key:**

```powershell
echo $env:GEMINI_API_KEY
```

**For Linux/Mac (Bash):**

```bash
export GEMINI_API_KEY="your-actual-api-key-here"
```

**To set it permanently (add to** `~/.bashrc` **or** `~/.zshrc`**):**

```bash
echo 'export GEMINI_API_KEY="your-actual-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

**Verify the key:**

```bash
echo $GEMINI_API_KEY
```

---

## ▶️ How to Play

### 🎮 Step 5: Classic Quiz Game with Leaderboard

Run the classic quiz mode:

```bash
cd step_5
jac run step5.jac
```

- Enter your name and select a difficulty (Easy, Medium, Hard).
- Answer a series of questions.
- View your score and compete for the top spot on the leaderboard!

### 🧠 Step 6: AI-Powered Quiz with Gemini LLM

Run the AI-enhanced quiz mode:

```bash
cd step_6
jac run step6.jac
```

- Choose a difficulty level (Easy, Medium, Hard).
- Answer questions and receive **intelligent explanations** for incorrect answers, powered by the Gemini LLM (`gemini/gemini-2.0-flash`).
- Learn as you play with tailored feedback to improve your knowledge.

---

## 📁 Project Structure

```
ai-quizbot-jac/
├── step_5/
│   ├── step5.jac       # Classic quiz with leaderboard
│   └── step5.impl.jac  # Implementation details for Step 5
├── step_6/
│   ├── step6.jac       # AI-powered quiz with LLM explanations
│   └── step6.impl.jac  # Implementation details for Step 6
├── LICENSE             # MIT License
└── README.md           # You're reading it!
```

---

## 📦 Requirements

- **Jac Language**: Install via `pip install jac`.
- **Python**: Version 3.7 or higher.
- **Gemini API Key**: Required for Step 6 (AI-powered quiz). See setup instructions above.
- **Optional**: A terminal (e.g., PowerShell, Bash, or any command-line interface).

---

## 🔧 Customization

Make **ai-quizbot-jac** your own with these tweaks:

- **Add New Questions:** Edit `step5.jac` or `step6.jac` to include your own questions or categories.
- **Adjust Difficulty Levels:** Modify difficulty settings or add new ones in the `.jac` files.
- **Swap LLMs:** Replace Gemini with another LLM by updating the model connection in `step6.jac`.
- **Extend Functionality:** Build new features like timed quizzes or multiplayer modes.

---

## 🐛 Troubleshooting

- **Jac not found?** Ensure `jac` is installed (`pip install jac`) and added to your PATH.
- **Gemini API errors?** Verify your API key is set correctly and you have an active internet connection.
- **Questions not loading?** Check the `.jac` files for syntax errors or missing question data.

For more help, open an issue on the GitHub repository.

---

## 📜 License

This project is licensed under the MIT License—free to use, modify, and distribute.

---

## 🙏 Acknowledgments

- **Jac Language**: For powering the core of this project. Learn more at jac-lang.com.
- **Gemini API**: For enabling AI-powered explanations. Check it out at ai.google.dev.
- **Open Source Community**: Thanks to all contributors and educators who inspire projects like this!

---

## 🌟 Contribute

Want to make **ai-quizbot-jac** even better? Here's how:

- **Add Questions**: Contribute new question sets for different subjects.
- **Enhance Features**: Suggest or implement new quiz modes or UI improvements.
- **Fix Bugs**: Report issues or submit pull requests via GitHub.

Star the repository ⭐ to show your support!

---

## 📬 Contact

Have questions or ideas? Reach out via the GitHub Issues page or connect with the community on Jac Language's official channels.

Happy quizzing! 🎉

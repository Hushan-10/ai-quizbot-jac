impl QuizGame.play {
    self.score = 0;
    self.q_index = 0;

    print("Select difficulty: Easy, Medium, or Hard");
    self.difficulty = input("Enter difficulty: ").lower();

    questions = [];
    answers = [];

    if self.difficulty == "easy" {
        questions = [
            "What is 2 + 2?",
            "What color is the sky on a clear day?",
            "What is the capital of Sri Lanka?"
        ];
        answers = [
            "4",
            "Blue",
            "Colombo"
        ];
    }
    elif self.difficulty == "medium" {
        questions = [
            "What is the square root of 49?",
            "Which planet is known as the Red Planet?",
            "Who wrote 'Romeo and Juliet'?"
        ];
        answers = [
            "7",
            "Mars",
            "Shakespeare"
        ];
    }
    elif self.difficulty == "hard" {
        questions = [
            "What is the derivative of x^2?",
            "Name the 3rd president of the United States.",
            "What is the chemical formula of sulfuric acid?"
        ];
        answers = [
            "2x",
            "Thomas Jefferson",
            "H2SO4"
        ];
    } else {
        print("Invalid difficulty selected. Exiting game.");
        return;
    }

    while self.q_index < len(questions) {
        user_answer = input(questions[self.q_index] + " ");
        self.process_answer(user_answer, answers[self.q_index], questions[self.q_index]);
        self.q_index += 1;
    }

    print("Quiz finished! Your score: " + str(self.score) + " out of " + str(len(questions)));
}

impl QuizGame.process_answer(user_answer: str, correct_answer: str, question: str) {
    if user_answer == correct_answer {
        print("Correct!");
        self.score += 1;
    } else {
        print(explain_answer(user_answer, correct_answer, question));
    }
}

"""AI Quiz Game"""

import from mtllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash");

"""Provide an intelligent explanation if the answer is incorrect"""
def explain_answer(user_answer: str, correct_answer: str, question: str) -> str byllm();

obj QuizGame {
    has score: int = 0, q_index: int = 0, difficulty: str = "";

    def play;
    def process_answer(user_answer: str, correct_answer: str, question: str);
}

with entry {
    game = QuizGame();
    game.play();
}

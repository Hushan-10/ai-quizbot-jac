node easy_node         { has question: str, answer: str, subject: str; }
node intermediate_node { has question: str, answer: str, subject: str; }
node hard_node         { has question: str, answer: str, subject: str; }
node leaderboard_entry { has username: str, score: int, difficulty: str; }

walker QuizGame {
    has username: str, difficulty: str, score: int = 0, q_index: int = 0;
    can answer_easy with easy_node entry;
    can answer_intermediate with intermediate_node entry;
    can answer_hard with hard_node entry;
    can process with `root entry;
}

with entry:__main__ {
    # Build question graph once
    if not [root-->(`?easy_node)] and not [root-->(`?intermediate_node)] and not [root-->(`?hard_node)] {
        # Easy
        e1 = easy_node(question="What is 2 + 2?", answer="4", subject="Maths");
        e2 = easy_node(question="What is 5 x 3?", answer="15", subject="Maths");
        e3 = easy_node(question="What planet is known as the Red Planet?", answer="Mars", subject="Science");
        e4 = easy_node(question="What is H2O commonly known as?", answer="Water", subject="Science");
        e5 = easy_node(question="Who was the first President of the USA?", answer="George Washington", subject="World History");
        e6 = easy_node(question="In which year did World War II end?", answer="1945", subject="World History");
        root ++> e1; e1 ++> e2; e2 ++> e3; e3 ++> e4; e4 ++> e5; e5 ++> e6;

        # Intermediate
        i1 = intermediate_node(question="What is the square root of 49?", answer="7", subject="Maths");
        i2 = intermediate_node(question="What is 12 divided by 4?", answer="3", subject="Maths");
        i3 = intermediate_node(question="What gas do plants absorb from the atmosphere?", answer="Carbon Dioxide", subject="Science");
        i4 = intermediate_node(question="What part of the cell contains DNA?", answer="Nucleus", subject="Science");
        i5 = intermediate_node(question="Who discovered America?", answer="Christopher Columbus", subject="World History");
        i6 = intermediate_node(question="Which civilization built the Pyramids?", answer="Egyptians", subject="World History");
        root ++> i1; i1 ++> i2; i2 ++> i3; i3 ++> i4; i4 ++> i5; i5 ++> i6;

        # Hard
        h1 = hard_node(question="What is the derivative of x^2?", answer="2x", subject="Maths");
        h2 = hard_node(question="Integrate 2x dx.", answer="x^2 + C", subject="Maths");
        h3 = hard_node(question="What is the powerhouse of the cell?", answer="Mitochondria", subject="Science");
        h4 = hard_node(question="Who developed the theory of relativity?", answer="Einstein", subject="Science");
        h5 = hard_node(question="Who wrote the Communist Manifesto?", answer="Karl Marx", subject="World History");
        h6 = hard_node(question="What wall fell in 1989, marking the end of Cold War?", answer="Berlin Wall", subject="World History");
        root ++> h1; h1 ++> h2; h2 ++> h3; h3 ++> h4; h4 ++> h5; h5 ++> h6;
    }

    # MAIN GAME LOOP
    loop = True;
    while loop {
        print("Welcome to the Scale-Agnostic Quiz Game!");
        username = input("Enter your name: ").strip();
        while username == "" {
            print("Name cannot be empty!");
            username = input("Enter your name: ").strip();
        }

        print("Select a difficulty:");
        print("1. Easy");
        print("2. Intermediate");
        print("3. Hard");
        diff_choice = input("Enter 1, 2, or 3: ").strip();
        if diff_choice == "1" {
            difficulty = "Easy";
        } elif diff_choice == "2" {
            difficulty = "Intermediate";
        } elif diff_choice == "3" {
            difficulty = "Hard";
        } else {
            print("Invalid choice. Defaulting to Easy.");
            difficulty = "Easy";
        }

        # Show leaderboard before quiz
        print("\nCurrent Leaderboard:");
        entries = [root-->(`?leaderboard_entry)];
        if len(entries) == 0 {
            print("No scores yet!");
        } else {
            print("Rank | Username | Score | Difficulty");
            print("-----|----------|-------|-----------");
            k = 0;
            while k < len(entries) {
                print(str(k+1) + "    | " + entries[k].username + " | " + str(entries[k].score) + " | " + entries[k].difficulty);
                k += 1;
            }
        }

        root spawn QuizGame(username=username, difficulty=difficulty, score=0, q_index=0);

        again = input("\nDo you want to play again? (yes/no): ").strip().lower();
        if again != "yes" {
            print("Thank you for playing. Goodbye!");
            loop = False;
        }
    }

}

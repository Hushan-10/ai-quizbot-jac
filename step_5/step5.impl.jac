impl QuizGame.process(difficulty:str) {
    if "Easy" == self.difficulty {
        visit e1;             #visiting easy node
    } elif "Intermediate" == self.difficulty {
        visit i1;             #visiting intermediate node
    } else {
        visit h1;             #visiting hard node
    }
}impl QuizGame.answer_easy {
    print("");
    print("Question " + str(self.q_index + 1) + ": (" + here.subject + " - Easy)");
    user_answer = input(here.question + " ");
    if user_answer.strip().lower() == here.answer.strip().lower() {
        print("Correct!");
        self.score += 1;
    } else {
        print("Incorrect! The correct answer was: " + here.answer);
    }
    self.q_index += 1;
    if [-->] {
        visit [-->];
    } else {
        # After last question, add to leaderboard and disengage
        root ++> leaderboard_entry(username=self.username, score=self.score, difficulty=self.difficulty);

        entries = [root-->(`?leaderboard_entry)];
        sorted_entries = [];

        # Manual sort: Find the max and append, up to 10 times or until empty
        n = 0;
        while len(entries) > 0 and n < 10 {
            max_idx = 0;
            max_score = entries[0].score;
            i = 1;
            while i < len(entries) {
                if entries[i].score > max_score {
                    max_score = entries[i].score;
                    max_idx = i;
                }
                i += 1;
            }
            sorted_entries.append(entries[max_idx]);
            entries.pop(max_idx);
            n += 1;
        }

        print("\nUpdated Leaderboard:");
        print("Rank | Username | Score | Difficulty");
        print("-----|----------|-------|-----------");
        k = 0;
        while k < len(sorted_entries) {
            print(str(k+1) + "    | " + sorted_entries[k].username + " | " + str(sorted_entries[k].score) + " | " + sorted_entries[k].difficulty);
            k += 1;
        }

        disengage;
    }
}

impl QuizGame.answer_intermediate {
    print("");
    print("Question " + str(self.q_index + 1) + ": (" + here.subject + " - Intermediate)");
    user_answer = input(here.question + " ");
    if user_answer.strip().lower() == here.answer.strip().lower() {
        print("Correct!");
        self.score += 1;
    } else {
        print("Incorrect! The correct answer was: " + here.answer);
    }
    self.q_index += 1;
    if [-->] {
        visit [-->];
    } else {
        root ++> leaderboard_entry(username=self.username, score=self.score, difficulty=self.difficulty);

        entries = [root-->(`?leaderboard_entry)];
        sorted_entries = [];

        # Manual sort: Find the max and append, up to 10 times or until empty
        n = 0;
        while len(entries) > 0 and n < 10 {
            max_idx = 0;
            max_score = entries[0].score;
            i = 1;
            while i < len(entries) {
                if entries[i].score > max_score {
                    max_score = entries[i].score;
                    max_idx = i;
                }
                i += 1;
            }
            sorted_entries.append(entries[max_idx]);
            entries.pop(max_idx);
            n += 1;
        }

        print("\nUpdated Leaderboard:");
        print("Rank | Username | Score | Difficulty");
        print("-----|----------|-------|-----------");
        k = 0;
        while k < len(sorted_entries) {
            print(str(k+1) + "    | " + sorted_entries[k].username + " | " + str(sorted_entries[k].score) + " | " + sorted_entries[k].difficulty);
            k += 1;
        }

        disengage;
    }
}

impl QuizGame.answer_hard {
    print("");
    print("Question " + str(self.q_index + 1) + ": (" + here.subject + " - Hard)");
    user_answer = input(here.question + " ");
    if user_answer.strip().lower() == here.answer.strip().lower() {
        print("Correct!");
        self.score += 1;
    } else {
        print("Incorrect! The correct answer was: " + here.answer);
    }
    self.q_index += 1;
    if [-->] {
        visit [-->];
    } else {
        root ++> leaderboard_entry(username=self.username, score=self.score, difficulty=self.difficulty);

        entries = [root-->(`?leaderboard_entry)];
        sorted_entries = [];

        # Manual sort
        n = 0;
        while len(entries) > 0 and n < 10 {
            max_idx = 0;
            max_score = entries[0].score;
            i = 1;
            while i < len(entries) {
                if entries[i].score > max_score {
                    max_score = entries[i].score;
                    max_idx = i;
                }
                i += 1;
            }
            sorted_entries.append(entries[max_idx]);
            entries.pop(max_idx);
            n += 1;
        }

        print("\nUpdated Leaderboard:");
        print("Rank | Username | Score | Difficulty");
        print("-----|----------|-------|-----------");
        k = 0;
        while k < len(sorted_entries) {
            print(str(k+1) + "    | " + sorted_entries[k].username + " | " + str(sorted_entries[k].score) + " | " + sorted_entries[k].difficulty);
            k += 1;
        }

        disengage;
    }
}

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});

  static List sample_data_hard = [
    {
      "id": 1,
      "question": "Which scientist developed the theory of general relativity?",
      "options": [
        "a) Isaac Newton",
        "b) Albert Einstein",
        "c) Niels Bohr",
        "d) Marie Curie"
      ],
      "answer_index": 1
    },
    {
      "id": 2,
      "question": "In which year did the Chernobyl disaster occur?",
      "options": ["a) 1979", "b) 1986", "c) 1991", "d) 2000"],
      "answer_index": 1
    },
    {
      "id": 3,
      "question": "Who painted the famous artwork 'Guernica'?",
      "options": [
        "a) Pablo Picasso",
        "b) Salvador Dali",
        "c) Vincent van Gogh",
        "d) Leonardo da Vinci"
      ],
      "answer_index": 0
    },
    {
      "id": 4,
      "question": "Which African country was formerly known as Abyssinia?",
      "options": ["a) Kenya", "b) Ethiopia", "c) Sudan", "d) Tanzania"],
      "answer_index": 1
    },
    {
      "id": 5,
      "question": "Who wrote the novel '1984'?",
      "options": [
        "a) George Orwell",
        "b) Aldous Huxley",
        "c) Ray Bradbury",
        "d) H.G. Wells"
      ],
      "answer_index": 0
    },
    {
      "id": 6,
      "question": "What is the chemical symbol for the element mercury?",
      "options": ["a) Hg", "b) Me", "c) Mc", "d) Mn"],
      "answer_index": 0
    },
    {
      "id": 7,
      "question": "Who composed the famous symphony 'Symphony No. 9'?",
      "options": [
        "a) Ludwig van Beethoven",
        "b) Wolfgang Amadeus Mozart",
        "c) Johann Sebastian Bach",
        "d) Franz Schubert"
      ],
      "answer_index": 0
    },
    {
      "id": 8,
      "question": "What is the largest organ in the human body?",
      "options": ["a) Liver", "b) Brain", "c) Skin", "d) Heart"],
      "answer_index": 2
    },
    {
      "id": 9,
      "question":
          "Which scientist proposed the theory of evolution through natural selection?",
      "options": [
        "a) Charles Darwin",
        "b) Gregor Mendel",
        "c) Louis Pasteur",
        "d) James Watson"
      ],
      "answer_index": 0
    },
    {
      "id": 10,
      "question": "What is the chemical formula for ozone?",
      "options": ["a) O3", "b) O2", "c) CO2", "d) N2"],
      "answer_index": 0
    }
  ];
  static List sample_data_easy = [
    {
      "id": 1,
      "question": "What is the capital of France?",
      "options": ['London', 'Paris', ' Rome', 'Berlin'],
      "answer_index": 1,
    },
    {
      "id": 2,
      "question": "Who painted the Mona Lisa",
      "options": [
        'Vincent van Gogh',
        'Pablo Picasso',
        'Leonardo da Vinci',
        'Michelangelo'
      ],
      "answer_index": 2,
    },
    {
      "id": 3,
      "question": "What is the largest planet in our solar system?",
      "options": ['Earth', 'Jupiter', 'Mars', 'Saturn'],
      "answer_index": 1,
    },
    {
      "id": 4,
      "question": "Which country is known for its famous pyramids ",
      "options": ['Greece', 'Egypt', 'China', 'Brazil'],
      "answer_index": 1,
    },
    {
      "id": 5,
      "question": "What is the chemical symbol for gold?",
      "options": ['Au', 'Ag', 'G', 'Go'],
      "answer_index": 0,
    },
    {
      "id": 6,
      "question": "Who wrote the play 'Romeo and Juliet'?",
      "options": [
        'Mark Twain',
        'Edgar Allan Poe',
        'William Shakespeare',
        'Charles Dickens'
      ],
      "answer_index": 2,
    },
    {
      "id": 7,
      "question": "Which ocean is the largest?",
      "options": [
        'Atlantic Ocean',
        'Pacific Ocean',
        'Indian Ocean',
        'Arctic Ocean'
      ],
      "answer_index": 1,
    },
    {
      "id": 8,
      "question": "How many continents are there in the world?",
      "options": ['5', '6', '7', '8'],
      "answer_index": 2,
    },
    {
      "id": 9,
      "question": "What is the capital of Spain?",
      "options": ['Madrid', 'Barcelona', 'Seville', 'Valencia'],
      "answer_index": 0,
    },
    {
      "id": 10,
      "question": "Who is known as the inventor of the telephone?",
      "options": [
        'Thomas Edison',
        'Albert Einstein',
        'Isaac Newton',
        'Alexander Graham Bell'
      ],
      "answer_index": 3,
    },
  ];
  static List sample_data_medium = [
    {
      "id": 1,
      "question": "What is the chemical symbol for iron?",
      "options": ["  Ir", "  In", "  Fe", "  Io"],
      "answer_index": 2
    },
    {
      "id": 2,
      "question": "Which planet is known as the 'Red Planet'?",
      "options": ["  Venus", "  Mars", "  Jupiter", "  Saturn"],
      "answer_index": 1
    },
    {
      "id": 3,
      "question": "Who painted the famous artwork 'The Starry Night'?",
      "options": [
        "  Pablo Picasso",
        "  Vincent van Gogh",
        "  Claude Monet",
        "  Salvador Dali"
      ],
      "answer_index": 1
    },
    {
      "id": 4,
      "question": "What is the longest river in the world?",
      "options": [
        "  Nile River",
        "  Amazon River",
        "  Mississippi River",
        "  Yangtze River"
      ],
      "answer_index": 0
    },
    {
      "id": 5,
      "question":
          "Which country is famous for the ancient ruins of Machu Picchu?",
      "options": ["  Peru", "  Mexico", "  Brazil", "  Italy"],
      "answer_index": 0
    },
    {
      "id": 6,
      "question": "Who wrote the famous novel 'To Kill a Mockingbird'?",
      "options": [
        "  F. Scott Fitzgerald",
        "  Harper Lee",
        "  J.D. Salinger",
        "  George Orwell"
      ],
      "answer_index": 1
    },
    {
      "id": 7,
      "question": "Which year did World War II end?",
      "options": ["  1945", "  1939", "  1941", "  1943"],
      "answer_index": 0
    },
    {
      "id": 8,
      "question": "Which country is home to the Great Barrier Reef?",
      "options": ["  Australia", "  Brazil", "  Japan", "  Canada"],
      "answer_index": 0
    },
    {
      "id": 9,
      "question": "Who is the author of the Harry Potter book series?",
      "options": [
        "  J.R.R. Tolkien",
        "  J.K. Rowling",
        "  George R.R. Martin",
        "  Stephenie Meyer"
      ],
      "answer_index": 1
    },
    {
      "id": 10,
      "question": "What is the largest species of shark?",
      "options": [
        "  Hammerhead shark",
        "  Tiger shark",
        "  Great white shark",
        "  Whale shark"
      ],
      "answer_index": 3
    }
  ];
}

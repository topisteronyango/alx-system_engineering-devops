import random

def feelings(feeling):
    positive_responses = [
        "You're feeling fantastic! Ready to level up my Python skills!",
        "You're feeling empowered! Learn new things about databases today!",
        "You're feeling inspired! Explore web development possibilities!"
    ]

    negative_responses = [
        "You're feeling overwhelmed. Time to take a mental health break.",
        "You're feeling stressed. Need to practice some self-care.",
        "You're feeling stuck. Let's find motivation through personal development."
    ]

    neutral_responses = [
        "You're feeling curious. Try out exploring the fundamentals of computer essentials.",
        "You're feeling focused. Try out building a solid foundation in Python programming.",
        "You're feeling determined. Try something new like nurturing an entrepreneurial mindset."
    ]

    if feeling.lower() == 'happy':
        print(random.choice(positive_responses))
    elif feeling.lower() == 'sad':
        print(random.choice(negative_responses))
    elif feeling.lower() == 'excited':
        print("I'm feeling excited! Ready to dive into web development projects!")
    elif feeling.lower() == 'angry':
        print("I'm feeling angry. Time to channel that energy into personal growth!")
    elif feeling.lower() == 'loved':
        print("I'm feeling loved. Grateful for the support on my learning journey!")
    else:
        print("I'm not sure what you're feeling. Please try again.")


while True:
    feeling = input("How are you feeling?\n> Happy 😃\n> Sad 😔\n> Excited 😄\n> Angry 😠\n> Loved 💗\nEnter 'q' to quit: ")

    if feeling.lower() == 'q':
        break

    feelings(feeling)

class WorkOutModel {
  String? title, description, procedure, imgUrl;

  WorkOutModel({
    this.title,
    this.imgUrl,
    this.description,
    this.procedure,
  });
}

List<WorkOutModel> workouts = [
  WorkOutModel(
      title: 'Lunges',
      description:
          'Challenging your balance is an essential part of a well-rounded exercise routine. Lunges do just that, promoting functional movement, while also increasing strength in your legs and glutes.',
      procedure:
          "1.Start by standing with your feet shoulder-width apart and arms down at your sides. \n\n 2.Take a step forward with your right leg and bend your right knee as you do so, stopping when your thigh is parallel to the ground. Ensure that your right knee doesn’t extend past your right foot.\n\n 3.Push up off your right foot and return to the starting position. Repeat with your left leg. This is one rep. \n\n 4.Complete 10 reps for 3 sets",
      imgUrl: 'assets/images/img1.png'),
  WorkOutModel(
      title: 'Pushups',
      description:
          "Drop and give me 20! Pushups are one of the most basic, yet effective, body weight moves you can perform because of the number of muscles that are recruited to perform them.",
      procedure:
          "1.Start in a plank position. Your core should be tight, shoulders pulled down and back, and your neck neutral.\n\n 2.Bend your elbows and begin to lower your body down to the floor. When your chest grazes it, extend your elbows and return to the start. Focus on keeping your elbows close to your body during the movement.\n\n 3.Complete 3 sets of as many reps as possible.",
      imgUrl: 'assets/images/img2.png'),
  WorkOutModel(
      title: 'Squats',
      description:
          'Squats increase lower body and core strength, as well as flexibility in your lower back and hips. Because they engage some of the largest muscles in the body, they also pack a major punch in terms of calories burned.',
      procedure:
          "1.Start by standing straight, with your feet slightly wider than shoulder-width apart, and your arms at your sides.\n\n 2.Brace your core and, keeping your chest and chin up, push your hips back and bend your knees as if you’re going to sit in a chair. \n\n 3.Ensuring your knees don’t bow inward or outward, drop down until your thighs are parallel to the ground, bringing your arms out in front of you in a comfortable position. Pause for one second, then extend your legs and return to the starting position. \n\n 4.Complete 3 sets of 20 reps.",
      imgUrl: 'assets/images/img3.png'),
  WorkOutModel(
      title: 'Dumbbell rows',
      description:
          'Not only will these make your back look killer in that dress, but dumbbell rows are also another compound exercise that strengthens multiple muscles in your upper body. Choose a moderate-weight dumbbell and ensure that you’re squeezing at the top of the movement.',
      procedure:
          "1.Start with a dumbbell in each hand. We recommend no more than 10 pounds for beginners. \n\n 2.Bend forward at the waist so your back is at a 45-degree angle to the ground. Be certain not to arch your back. Let your arms hang straight down. Ensure your neck is in line with your back and your core is engaged.\n\n 3.Starting with your right arm, bend your elbow and pull the weight straight up toward your chest, making sure to engage your lat, and stopping just below your chest.\n\n 4.Return to the starting position and repeat with the left arm. This is one rep. Repeat 10 times for 3 sets.",
      imgUrl: 'assets/images/img4.png'),
  WorkOutModel(
      title: 'Burpees',
      description:
          'An exercise we love to hate, burpees are a super effective whole-body move that provides great bang for your buck for cardiovascular endurance and muscle strength.',
      procedure:
          "1.Start by standing upright with your feet shoulder-width apart and your arms down at your sides. \n\n 2.With your hands out in front of you, start to squat down. When your hands reach the ground, pop your legs straight back into a pushup position. \n\n 3.Jump your feet up to your palms by hinging at the waist. Get your feet as close to your hands as you can get, landing them outside your hands if necessary. \n\n 4.Stand up straight, bringing your arms above your head and jump. \n\n 5.This is one rep. Complete 3 sets of 10 reps as a beginner.",
      imgUrl: 'assets/images/img5.png'),
  WorkOutModel(
      title: 'Side planks',
      description:
          'A healthy body requires a strong core at its foundation, so don’t neglect core-specific moves like the side plank. \nFocus on the mind-muscle connection and controlled movements to ensure you’re completing this move effectively.',
      procedure:
          "1.Lie on your right side with your left leg and foot stacked on top of your right leg and foot. Prop your upper body up by placing your right forearm on the ground, elbow directly under your shoulder. \n\n 2.Contract your core to stiffen your spine and lift your hips and knees off the ground, forming a straight line with your body. \n\n 3.Return to start in a controlled manner. Repeat 3 sets of 10–15 reps on one side, then switch",
      imgUrl: 'assets/images/img2.png'),
  WorkOutModel(
      title: 'Glute bridge',
      description:
          'The glute bridge effectively works your entire posterior chain, which isn’t only good for you, but it will make your booty look perkier as well.',
      procedure:
          "1.Start by lying on the floor with your knees bent, feet flat on the ground, and arms straight at your sides with your palms facing down. \n\n 2.Pushing through your heels, raise your hips off the ground by squeezing your core, glutes, and hamstrings. Your upper back and shoulders should still be in contact with the ground, and your core down to your knees should form a straight line. \n\n 3.Pause 1–2 seconds at the top and return to the starting position.\n\n 4.Complete 10–12 reps for 3 sets.",
      imgUrl: 'assets/images/img4.png'),
  WorkOutModel(
      title: 'Planks',
      description:
          'Planks are an effective way to target both your abdominal muscles and your whole body. Planking stabilizes your core without straining your back the way situps or crunches might.',
      procedure:
          "1.Begin in a pushup position with your hand and toes firmly planted on the ground, your back straight, and your core tight.\n\n 2.Keep your chin slightly tucked and your gaze just in front of your hands.\n\n 3.Take deep controlled breaths while maintaining tension throughout your entire body, so your abs, shoulders, triceps, glutes and quads are all engaged.\n\n 4.Complete 2-3 sets of 30 second holds to start.",
      imgUrl: 'assets/images/img3.png'),
];

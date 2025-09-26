impl BabyStory.tell {
    self.story = tell_story(self.prompt);  # Call the LLM
    print(self.story);                     # Print to console
    report self.story;                     # Report back
}

  
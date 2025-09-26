"""A Baby Story Generator"""

import from byllm.llm { Model }

# Initialize the LLM model
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

# Function powered by the LLM
def tell_story(prompt: str) -> str by llm();

walker BabyStory {
    has prompt: str = "Tell me a bedtime story for a child.";
    has story: str = "";

    can tell with entry;   # Ability, body defined in impl
}

# Will run when in CLI mode (not in cloud)
with entry:__main__ {
    root spawn BabyStory();
}

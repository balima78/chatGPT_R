#### ChatGPT Prompt Engineering for Developers ####
## https://learn.deeplearning.ai/

#install.packages("openai")
Sys.setenv(
  OPENAI_API_KEY = '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'
  )

library(openai)

get_completion <- function(prompt, model = "gpt-3.5-turbo", ...){
  res <- create_chat_completion(
    model = model,
    messages = list(
      list(
        "role" = "user",
        "content" = prompt
      )
    ), ...
  )

  res$choices$message.content
}


text  <- "
You should express what you want a model to do by
providing instructions that are as clear and
specific as you can possibly make them.
This will guide the model towards the desired output,
and reduce the chances of receiving irrelevant
or incorrect responses. Don't confuse writing a
clear prompt with writing a short prompt.
In many cases, longer prompts provide more clarity
and context for the model, which can lead to
more detailed and relevant outputs.
"
prompt0 <-  paste("Summarize the text delimited by triple backticks
                 into a single sentence. ```", text, "```")

get_completion(prompt0, temperature = 0)



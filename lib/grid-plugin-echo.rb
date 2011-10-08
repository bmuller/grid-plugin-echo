require "grid-plugin-echo/version"

GridCLI.hooker.register(:before_post_creation) { |post|
  puts "[grid-echo] A post is about to be created.  It's params are:"
  p post
  post
}

GridCLI.hooker.register(:before_signup) { |username|
  puts "[grid-echo] #{username} is about to sign up!"
  username
}

GridCLI.hooker.register(:before_update) {
  puts "[grid-echo] You are updating!  Nice."
}

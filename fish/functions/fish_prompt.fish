# - user@host
# - current path
# - Git branch and dirty state (if inside a git repo)

function _git_branch_name
  echo (command git symbolic-ref -q HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end

function _prompt_host
  hostname | cut -d . -f 1
end

function _promopt_path
  pwd | sed "s:^$HOME:~:"
end

function fish_prompt
  # set -l last_status $status
  set -l yellow (set_color yellow)
  set -l red (set_color red)
  set -l green (set_color green)
  set -l normal (set_color normal)

  # Add a newline before new prompts
  echo -e ''

  # Print user, host and path
  echo -n -s $yellow '[' $USER '@' (_prompt_host) ':' (_promopt_path) ']'

  # Show git branch and status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info $green $git_branch $red " *" $normal
    else
      set git_info $green $git_branch $normal
    end
    echo -n -s ' ' $git_info
  end

  # Show prompt char on it's own line
  echo -e ''
  echo -e -n -s $prompt_color '% ' $normal
end

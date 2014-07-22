function fish_prompt --description 'Write out the prompt'
	
  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end
	
    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)
  set -l white (set_color white)

  set -l arrow ""
  set -l cwd $white(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)
    set git_info "git:($git_branch)"

    if [ (_is_git_dirty) ]
      set -l dirty "⚡ "

      set git_info "$dirty$git_info"
    end
  end

    set stat $status

# Just calculate these once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

if not set -q __fish_color_blue
        set -g __fish_color_blue (set_color -o blue)
    end

#Set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
    end

switch $USER

case root

if not set -q __fish_prompt_cwd
            if set -q fish_color_cwd_root
                set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            else
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
        end

printf '%s@%s %s%s%s# ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal"

case '*'

if not set -q __fish_prompt_cwd
            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end

printf '%s%s%s %s%s \f\r❯ ' "$git_info" "$__fish_prompt_cwd" (pwd) "$__fish_color_status" "$__fish_prompt_normal"

end
end

zsh:
  pkg.installed


oh-my-zsh:
  git.cloned:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - target: {{ grains.homedir }}/.oh-my-zsh

  file.symlink:
  - name: {{ grains.homedir}}/.zshrc
  - target: {{ grains.statesdir }}/zsh/zshrc
  - force: True




spaceship-prompt-oh-my-zsh:
  git.cloned:
    - name : https://github.com/denysdovhan/spaceship-prompt.git
    - target: {{ grains.homedir }}/.oh-my-zsh/custom/themes/spaceship-prompt

  file.symlink:
    - name: {{ grains.homedir }}/.oh-my-zsh/custom/themes/spaceship.zsh-theme
    - target: {{ grains.homedir }}/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme
    - force: True
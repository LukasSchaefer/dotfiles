# git fetch all branches
gitfetchall() {
    if [ "$#" -ge 1 ]; then
        echo "ERROR: gitfetchall does not take any arguments"
        return
    fi
    git branch -r \
      | grep -v '\->' \
      | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" \
      | while read remote; do \
          git branch --track "${remote#origin/}" "$remote"; \
        done
    git fetch --all
    return
}

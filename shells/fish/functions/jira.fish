function jira
    if count $argv > /dev/null
        xdg-open https://jira.influentialsoftware.com/browse/$argv
    else
        xdg-open https://jira.influentialsoftware.com/
    end
end

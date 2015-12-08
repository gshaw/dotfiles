# Recursively delete .DS_Store files in the current directly
function dsdestroy
  find . -name '*.DS_Store' -type f -delete
end

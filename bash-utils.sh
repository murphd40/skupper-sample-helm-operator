
function foo {
  echo "kubectl apply -f - << EOF\n$(grep "")\nEOF"
}

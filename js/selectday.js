var rel = document.querySelectorAll('.blocklist.right input');
var lel = document.querySelectorAll('.blocklist.left input');
for (var i = rel.length - 1; i >= 0; i--) {
  rel[i].disabled = true;
}
for (var i = lel.length - 1; i >= 0; i--) {
  lel[i].disabled = true;
}
rel = [
  document.querySelectorAll('#day0 .blocklist.right input'),
  document.querySelectorAll('#day1 .blocklist.right input'),
  document.querySelectorAll('#day2 .blocklist.right input')
];
lel = [
  document.querySelectorAll('#day0 .blocklist.left input'),
  document.querySelectorAll('#day1 .blocklist.left input'),
  document.querySelectorAll('#day2 .blocklist.left input')
];
function selectday(side, day) {
  for (var i = rel[day].length - 1; i >= 0; i--) {
    rel[day][i].disabled = !side;
    !side && (rel[day][i].checked = side)
  }
  for (var i = lel[day].length - 1; i >= 0; i--) {
    lel[day][i].disabled = side;
    side && (lel[day][i].checked = !side)
  }
}

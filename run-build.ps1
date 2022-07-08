
$array = @(".\build\*", ".\public\build", ".\.cache")
$counter = 0;

do {
  try {
    Remove-Item $array[$counter] -recurse -ErrorAction Stop
  }
  catch {
    $array[$counter] + " not found!"
  }
  $counter += 1
} while ($counter -lt $array.length)

"Job Finished!"
npm run build
npm run start
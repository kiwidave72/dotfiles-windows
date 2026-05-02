

# Executing all scripts in components folder (alphabetical order).

Get-ChildItem -Path "components" -Filter "*.ps1" | Where-Object { $_.Name -notlike "*ignore*" } |
ForEach-Object {
  Write-Output "Starting $_";
  try {
    Invoke-Expression -Command "$_";
  }
  finally {
    
  }
  
};


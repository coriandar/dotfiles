$VMName = "webdev"
$Hori = 2560
$Vert = 1440


$VID = @{
    VMName = $VMName
    HorizontalResolution = $Hori
    VerticalResolution = $Vert
    ResolutionType = "Single"
}
Set-VMVideo @VID
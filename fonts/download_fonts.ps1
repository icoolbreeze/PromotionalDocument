# Download fonts for local use
# Run this script to download all required fonts

$fonts = @(
    @{url="https://fonts.gstatic.com/s/inter/v20/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuOKfMZg.ttf"; name="Inter-Light.ttf"},
    @{url="https://fonts.gstatic.com/s/inter/v20/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuLyfMZg.ttf"; name="Inter-Regular.ttf"},
    @{url="https://fonts.gstatic.com/s/inter/v20/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuGKYMZg.ttf"; name="Inter-SemiBold.ttf"},
    @{url="https://fonts.gstatic.com/s/inter/v20/UcCO3FwrK3iLTeHuS_nVMrMxCp50SjIw2boKoduKmMEVuDyYMZg.ttf"; name="Inter-ExtraBold.ttf"},
    @{url="https://fonts.gstatic.com/s/notosanssc/v39/k3kCo84MPvpLmixcA63oeAL7Iqp5IZJF9bmaG4HFnYw.ttf"; name="NotoSansSC-Light.ttf"},
    @{url="https://fonts.gstatic.com/s/notosanssc/v39/k3kCo84MPvpLmixcA63oeAL7Iqp5IZJF9bmaG9_FnYw.ttf"; name="NotoSansSC-Regular.ttf"},
    @{url="https://fonts.gstatic.com/s/notosanssc/v39/k3kCo84MPvpLmixcA63oeAL7Iqp5IZJF9bmaG-3FnYw.ttf"; name="NotoSansSC-Medium.ttf"},
    @{url="https://fonts.gstatic.com/s/notosanssc/v39/k3kCo84MPvpLmixcA63oeAL7Iqp5IZJF9bmaGzjCnYw.ttf"; name="NotoSansSC-Bold.ttf"}
)

foreach ($font in $fonts) {
    Write-Host "Downloading $($font.name)..."
    Invoke-WebRequest -Uri $font.url -OutFile $font.name
}

Write-Host "All fonts downloaded successfully!"

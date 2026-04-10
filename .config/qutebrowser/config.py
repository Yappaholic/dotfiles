config.load_autoconfig(True)
#c.fonts.default_family = ["Noto Sans", "Monospace", "monospace"]
c.url.searchengines = {
        'DEFAULT': "https://search.brave.com/search?q={}"
}
c.qt.environ={"QTWEBENGINE_FORCE_USE_GBM":"0"}
c.qt.args = ["enable-gpu-rasterization", "ignore-gpu-blackilst","enable-features=VaapiIgnoreDriverChecks,VaapiVideoDecoder" ]

return {
    settings = {
        pylsp = {
            plugins = {
                pyflakes = {
                    enabled = false,
                },
                pycodestyle = {
                    enabled = false,
                },
                mccabe = {
                    enabled = false,
                },
                flake8 = {
                    enabled = true,
                    ignore = {"F403", "F405", "E501", "E701", "E704"},
                },
            }
        }
    }
}

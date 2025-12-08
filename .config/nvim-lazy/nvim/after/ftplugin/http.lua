vim.keymap.set({ "n" }, "<leader>rr", function()
    require("rest-nvim").run()
end, { desc = "[R]uns the [R]equest under the cursor" })

vim.keymap.set({ "n" }, "<leader>rl", function()
    require("rest-nvim").last()
end, { desc = "[R]uns the [L]ast ran request" })

vim.keymap.set({ "n" }, "<leader>rf", function()
    require("rest-nvim").run_file("%")
end, { desc = "[R]uns all the requests in the [F]ile" })

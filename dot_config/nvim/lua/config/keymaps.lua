-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 1. "jk"를 눌러서 Insert 모드 탈출 (국룰 설정)
map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- 2. 저장 및 종료 편의성
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- 3. 줄 이동 (Visual Mode에서 선택된 텍스트 위아래 이동)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- 4. LazyGit 열기 (LazyVim 기본은 <leader>gg 지만 확실하게 지정)
map("n", "<leader>lg", function() require("lazyvim.util").terminal.open({ "lazygit" }) end, { desc = "LazyGit" })

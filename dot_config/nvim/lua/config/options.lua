-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- 1. 리더키 설정 (보통 스페이스바를 씁니다)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 2. UI 설정
opt.relativenumber = false -- 상대 라인 번호 (현재 줄은 절대번호, 위아래는 상대번호)
opt.number = true          -- 라인 번호 표시
opt.wrap = false           -- 줄바꿈 끄기 (긴 코드는 옆으로 스크롤)

-- 3. 탭/들여쓰기 (개인 취향에 따라 2 or 4)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- 탭을 스페이스로 변환
opt.smartindent = true

-- 4. 클립보드 (시스템 클립보드와 연동)
-- Mac(pbcopy)와 Linux(xclip)이 설치되어 있다면 자동으로 작동함
opt.clipboard = "unnamedplus"

-- 5. 기타 편의
opt.ignorecase = true -- 검색 시 대소문자 무시
opt.smartcase = true  -- 대문자 섞어 검색하면 대소문자 구분
opt.scrolloff = 10    -- 커서 위아래로 10줄 여유 두고 스크롤

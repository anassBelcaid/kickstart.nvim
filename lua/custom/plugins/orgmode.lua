return {
  'nvim-orgmode/orgmode',
  lazy = false,
  config = function()
    require('orgmode').setup {

      -- Load custom treesitter grammar for org filetype
      -- require('orgmode').setup_ts_grammar(),

      -- Treesitter configuration
      require('nvim-treesitter.configs').setup {
        -- If TS highlights are not enabled at all, or disabled via `disable` prop,
        -- highlighting will fallback to default Vim syntax highlighting
        highlight = {
          enable = true,
          -- Required for spellcheck, some LaTex highlights and
          -- code block highlights that do not have ts grammar
          additional_vim_regex_highlighting = { 'org' },
        },
        ensure_installed = { 'org' }, -- Or run :TSUpdate org
      },
      require('orgmode').setup {
        org_agenda_files = { '~/Dropbox/org/*', '~/my-orgs/**/*' },
        org_default_notes_file = '~/my-orgs/refile.org',
      },

      -- Configure the todo keywords
      org_todo_keywords = { 'TODO(t)', 'WAITING(w)', '|', 'DONE(d)', 'DELEGATED(g)' },
      org_todo_keyword_faces = {
        WAITING = ':foreground blue :weight bold',
        DELEGATED = ':background #FFFFFF :slant italic :underline on',
        TODO = ':background #000000 :foreground red', -- overrides builtin color for `TODO` keyword,
      },

      -- slit mode
      win_split_mode = { 'float', 0.6 },

      -- split mode corners
      win_border = 'rounded',
      org_hide_leading_stars = true,
      org_hide_emphasis_markers = true,
      org_ellipsis = '⤵',
      org_highlight_latex_and_related = 'entities',
      org_agenda_span = 'week',
      org_agenda_skip_scheduled_if_done = true,
      org_agenda_skip_deadline_if_done = true,
      org_use_tag_inheritance = true,
    }
  end,
}

return {
  'akinsho/org-bullets.nvim',
  lazy = false,
  config = function()
    require('org-bullets').setup {

      concealcursor = false,

      symbols = {
        -- list symbol
        list = '•',
        -- headlines can be a list
        headlines = { '◉', '○', '✸', '✿' },
        -- or a function that receives the defaults and returns a list
        checkboxes = {
          half = { '', 'OrgTSCheckboxHalfChecked' },
          done = { '✓', 'OrgDone' },
          todo = { '˟', 'OrgTODO' },
        },
      },
    }
  end,
}

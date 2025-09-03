return {
  'vuki656/package-info.nvim',
  name = 'Package Info',
  event = 'BufRead package.json',
  opts = {
    icons = {
      style = {
        outdated = '󰳡 ',
      },
    },
    hide_up_to_date = true,
    hide_unstable_versions = true,
    package_manager = 'pnpm',
  },
}

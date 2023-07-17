return {
  {
    "goolord/alpha-nvim",
    opts = function(_, dashboard)
      local logo = [[
	    ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
	    ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
	    ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
	    ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
	    ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
	    ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝


      ]]

      local logo1 = [[
⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠
⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣷⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠥
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣷⠀⠀⠀⠀⠀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⢸⣿⣶⣥⣀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⣦⠀⠀⣿⣿⣿⣿⣿⣶⣶⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣼⣿⣧⠀⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⡴⠒
⠀⠀⠀⠀⠀⠀⠀⠀⢰⣇⠀⠀⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⢻⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣷⣄⡀⢳⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⢀⡼⢹⣿⣿⣿⡿⣿⣿⡟⠛⠉⠉⠉⠉⠉⠉⠁⠈⠉⠉⠉⠉⠀⠀⠀⠀⠙⠻⣿⡄⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢾⡇
⠀⠀⠀⠀⠀⠀⠀⠀⢸⢀⣼⠁⣼⣿⣿⣿⠚⠋⡿⠀⠀⠀⠀⠀⢀⣤⡶⢶⣤⣀⡾⠀⠀⠃⠀⠀⠀⢰⠀⢹⣇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣏⡼⢻⠀⣿⣿⣿⣿⣴⡀⡇⠀⠀⠀⠀⢠⣾⣡⡶⣶⣽⡋⠀⠀⠀⠀⠀⠀⠀⠈⠁⠐⣿⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⠂
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⢸⣠⣿⣿⣿⣿⣿⡇⢿⠀⠀⠀⠀⣼⣿⢿⣤⡾⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⣴⠖⣿⡆
⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠸⠏⢸⣿⣿⣿⣿⣿⠈⢧⠀⠀⠸⣿⣿⣷⣦⡶⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⢰⠃⡼⢯⡇⠈⡇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣍⠀⠈⠓⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⠿⠛⠉⣇⠀⠀⠀⢸⡼⠳⣄⠀⠀⣷
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣷⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠉⠁⠀⠀⠀⠀⢸⡄⠀⠀⣼⢻⡄⢘⡇⠀⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⠿⠿⠿⣿⡿⣿⡿⠿⠿⠿⠿⠿⠿⠿⠛⠛⠛⢛⠟⣉⡽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣿⢠⣇⡞⣠⡾⠁⣸⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆⠀⠀⠈⠓⠮⣷⣄⡀⠀⠀⠀⠀⢻⣄⣀⣴⣿⠞⠉⠀⠀⠀⢀⣀⣠⣤⣄⠀⠀⠀⠀⠀⠀⠸⢿⣼⠉⠳⠿⠀⡰⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⢰⠶⠶⣦⣌⡛⢿⣦⠀⠀⠀⠀⠙⠛⠉⠀⠀⢀⣠⣴⠾⠛⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠨⣿⠀⠀⠀⢰⠇⠸⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⠀⠉⠻⣶⠘⢷⡀⠀⠀⠀⠀⠀⠀⠀⠘⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡾⠀⠀⠹
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⣼⠉⣏⠀⠀⢲⠤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⣀⣠⡄⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠓⠀⠀⠀⠀⠀⢰⠏⠀⢹⢰⢷⣼⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⠉⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠶⢤⣄⣀⠀⠀⠀⠀⠀⠀⢀⡟⠀⠀⢸⣿⣿⣿⡇
⠀⠀⠀⣀⣤⡀⠀⠀⠀⠀⠀⢀⡴⠋⠹⡆⠀⠀⠀⠸⣇⣠⡴⠂⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣀⠀⠀⠀⠉⠛⠦⡄⠀⠀⢀⡾⠀⠀⠀⢀⣾⣿⣿⣿
⠀⠀⢸⠁⠀⢧⠀⠀⠀⠀⠀⢸⠀⠀⠀⡇⠀⠀⠀⠀⠹⣇⠀⠀⣀⠀⠀⠹⢦⣄⡀⠾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢶⣄⠀⠀⠀⠀⠀⢠⡞⠁⠀⣠⣾⣿⣿⣿⣿⣿
⠀⠀⢸⠀⠀⠘⣇⠀⠀⠀⠀⢸⠀⠀⠀⡇⠀⠀⠀⠀⠀⠘⣧⡾⠋⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠄⠀⠀⠈⠛⠀⠀⢀⣴⣿⢃⣤⣾⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠘⡆⠀⠀⠹⡆⠀⠀⠀⢸⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠘⢷⡄⠀⠀⠈⣿⠙⠛⢳⡖⠒⠛⠛⠛⢻⠟⠋⠁⠀⠀⠀⠀⠀⠀⣠⢞⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⢷⠀⠀⠀⢻⡄⠀⠀⢸⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠙⢧⡀⠀⢿⡀⠀⠘⠁⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠈⣷⠀⠀⠀⠹⡄⠀⢸⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣌⣧⡀⠀⠀⠀⠀⣠⠟⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠘⣇⠀⠀⠀⢹⡀⢸⠀⠀⠀⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⡒⠶⠖⠋⠁⠀⠀⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⢹⡆⠀⠀⠀⢧⢸⡄⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠲⠤⠤⠒⠚⠋⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⢀⣠⠤⢿⡄⠀⠀⠈⠻⠣⠾⠿⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⢠⡏⠀⠀⢈⣷⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⢽⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⣠⠿⡇⠀⠀⠈⡿⠀⠀⠀⢀⣠⡤⣤⣿⣄⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢠⠋⠠⣇⠀⠀⢀⣷⣶⠶⠚⠉⠁⠀⠀⠈⠉⠙⠛⠛⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⢻⠀⠀⢿⣆⠀⣾⣧⣠⡄⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
]]

      local logo2 = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀             
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⡦⠗⠓⠒⠛⠛⠷⢶⣤⣀⠀⠀⠀⠀⢀⣀⣄⠀⠀⠀⠀⠀⠀⣠ ⠀⠀⠀⠀⠀⠀⠀⠀  
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⠋⠁⠀⠀⠀⡄⠀⠀⠀⠀⠈⠙⣿⣦⣴⣾⠛⠉⠀⠀⠀⠀⠀⠈⠘⠛⢠⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⢀⠀⠀⠐⡂⢀⡀⠅⠄⠀⠀⠀⠙⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠃⠀⠀⠀⣫⣴⠿⠛⠛⠛⠛⠿⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠁⠀⠀⠀⣴⡿⠁⠀⠀⠀⠀⠀⠀⠙⣯⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣀⣁⠀⠤⠤⠤⠤⣤⣤⣤⣴⣤⣶⡶⠶⠶⢶⣾⣿⣭⣾⣿⣶⣦⣠⣴⣿⣁⠠⣄⣀⣢⡀⠀⡠⠀⢹⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠟⠁⠀⣿⣯⠉⠉⠉⠹⣟⢋⠛⡛⠻⣿⠿⠷⠶⣦⣾⣿⣇⣤⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠋⠀⠀⠀⢸⣿⡄⠀⠀⠀⠙⠛⠳⠶⢟⠃⠀⠀⠀⠀⡐⡿⠀⠉⠉⠙⠓⠳⠭⠷⣖⣤⡤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢴⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠻⢿⣷⣖⣠⣄⠀⡀⠻⣿⣆⡀⠀⠀⠈⠂⠀⠁⠀⠀⠀⢀⣴⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠻⠶⠲⠤⣀⣀⠀⠀⠀⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠾⣷⣾⣿⣿⣦⡤⢀⣀⣀⣀⣠⣤⣶⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠂⠐⢄
⠀⠀⠀⠀⠀⠄⡈⠄⡀⡀⠀⡀⠄⣀⠂⠄⡀⠀⢀⠀⢄⠠⢀⡀⠈⠉⠉⠉⠋⠙⠛⠛⠛⢟⠛⡉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

      local function getGreeting(name)
        local tableTime = os.date("*t")
        local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
        local hour = tableTime.hour
        local greetingsTable = {
          [1] = "  Sleep well",
          [2] = "  Good morning",
          [3] = "  Good afternoon",
          [4] = "  Good evening",
          [5] = "󰖔  Good night",
        }
        local greetingIndex = 0
        if hour == 23 or hour < 7 then
          greetingIndex = 1
        elseif hour < 12 then
          greetingIndex = 2
        elseif hour >= 12 and hour < 18 then
          greetingIndex = 3
        elseif hour >= 18 and hour < 21 then
          greetingIndex = 4
        elseif hour >= 21 then
          greetingIndex = 5
        end
        return "\t\t\t\t" .. datetime .. "\t" .. greetingsTable[greetingIndex] .. ", " .. name
      end
      local greeting = getGreeting("Cat")

      dashboard.section.header.val = vim.split(logo2 .. "\n" .. greeting, "\n")
      dashboard.section.header.opts.hl = "Function"
    end,
  },

  -- 渲染代码中出现的色值
  {
    "NvChad/nvim-colorizer.lua",
    event = "VeryLazy",
    config = function()
      require("colorizer").setup({})
    end,
  },

  -- 将没有使用的function/method/var等变暗
  {
    "zbirenbaum/neodim",
    event = "LspAttach",
    config = function()
      require("neodim").setup({
        alpha = 0.75,
        blend_color = "#000000",
        update_in_insert = {
          enable = true,
          delay = 100,
        },
        hide = {
          virtual_text = true,
          signs = true,
          underline = true,
        },
      })
    end,
  },

  -- floating winbar
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    config = function()
      local colors = require("tokyonight.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = "#FC56B1", guifg = colors.black },
            InclineNormalNC = { guifg = "#FC56B1", guibg = colors.black },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- auto-resize windows
  {
    "anuvyklack/windows.nvim",
    event = "WinNew",
    dependencies = {
      { "anuvyklack/middleclass" },
      { "anuvyklack/animation.nvim", enabled = false },
    },
    keys = { { "<leader>Z", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } },
    config = function()
      vim.o.winwidth = 5
      vim.o.equalalways = false
      require("windows").setup({
        animation = { enable = false, duration = 150 },
      })
    end,
  },

  -- scrollbar
  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      local colors = require("tokyonight.colors").setup()
      scrollbar.setup({
        handle = { color = colors.bg_highlight },
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice", "notify" },
        marks = {
          Search = { color = colors.orange },
          Error = { color = colors.error },
          Warn = { color = colors.warning },
          Info = { color = colors.info },
          Hint = { color = colors.hint },
          Misc = { color = colors.purple },
        },
      })
    end,
  },

  -- style windows with different colorschemes
  {
    "folke/styler.nvim",
    event = "VeryLazy",
    opts = {
      themes = {
        markdown = { colorscheme = "catppuccin" },
        help = { colorscheme = "catppuccin", background = "dark" },
      },
    },
  },
  -- silly drops
  -- {
  --   "folke/drop.nvim",
  --   event = "VeryLazy",
  --   enabled = true,
  --   config = function()
  --     math.randomseed(os.time())
  --     local theme = ({ "leaves", "snow", "stars", "xmas", "spring", "summer" })[math.random(1, 7)]
  --     require("drop").setup({
  --       theme = theme,
  --       screensaver = 1000 * 60 * 30, -- show after 5 minutes. Set to false, to disable
  --       filetypes = { "dashboard", "alpha", "starter" },
  --     })
  --   end,
  -- },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return require("util.dashboard").status()
        end,
      })
    end,
  },
}
